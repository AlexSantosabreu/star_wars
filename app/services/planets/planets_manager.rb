class Planets::PlanetsManager

  def initialize(url)
    @url = url
  end

  def call
    return if url.blank?

    Planets::CreatePlanets.new(url).call
  end

  private

  attr_reader :url
end
