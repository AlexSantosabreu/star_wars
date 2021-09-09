class Planets::CreatePlanets
  def initialize(url)
    @url = url
  end

  def call
    begin
      planets = Planets::GetPlanetsService.new(url).call

      Planets::PersistPlanets.new(planets["results"]).call

      Planets::PlanetsManager.new(planets["next"]).call unless planets["next"].blank?

    rescue StandardError => e
      Rails.logger.error("Failed to create planets")
    end
  end

  private

  attr_reader :url
end
