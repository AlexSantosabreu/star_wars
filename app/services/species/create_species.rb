class Species::CreateSpecies
  def initialize(url)
    @url = url
  end

  def call
    begin
      species = Species::GetSpeciesService.new(url).call

      Species::PersistSpecies.new(species["results"]).call

      Species::SpeciesManager.new(species["next"]).call unless species["next"].blank?

    rescue StandardError => e
      Rails.logger.error("Failed to create species")
    end
  end

  private

  attr_reader :url
end
