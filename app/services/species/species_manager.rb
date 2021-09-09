class Species::SpeciesManager

  def initialize(url)
    @url = url
  end

  def call
    return if url.blank?

    Species::CreateSpecies.new(url).call
  end

  private

  attr_reader :url
end
