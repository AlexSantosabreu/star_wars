class Species::PersistSpecies
  def initialize(species)
    @species = Array(species)
  end

  def call
    species.each do |specie|
      persist(specie)
    end

  end

  def persist(item)

    Specie.create(
      name: item['name'],
      classification: item['classification'],
      designation: item['designation'],
      average_height: item['average_height'],
      skin_colors: item['skin_colors'],
      hair_colors: item['hair_colors'],
      eye_colors: item['eye_colors'],
      average_lifespan: item['average_lifespan'],
      planet_id: homeworld_id(item['homeworld']),
      language: item['language']
    )
  end

  private

  attr_reader :species

  def homeworld_id(planet_id)
    homeworld = planet_id

    return if homeworld.nil?

    homeworld.scan(/\d+/).first.to_i
  end
end
