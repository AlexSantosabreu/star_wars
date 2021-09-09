class Planets::PersistPlanets
  def initialize(planets)
    @planets = Array(planets)
  end

  def call
    planets.each do |planet|
      persist(planet)
    end

  end

  def persist(item)

    Planet.create(
      name: item['name'],
      rotation_period: item['rotation_period'],
      orbital_period: item['orbital_period'],
      diameter: item['diameter'],
      climate: item['climate'],
      gravity: item['gravity'],
      terrain: item['terrain'],
      surface_water: item['surface_water'],
      population: item['population']
    )
  end

  private

  attr_reader :planets
end
