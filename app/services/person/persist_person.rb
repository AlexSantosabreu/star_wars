class Person::PersistPerson
  def initialize(person)
    @person = Array(person)
  end

  def call
    person.each do |people|
      ActiveRecord::Base.transaction do
        people_persited = persist(people)
        assing_person_to_starship(people_persited.id, people["starships"])
        assing_person_to_vehicles(people_persited.id, people["vehicles"])
      end
    end

  end

  private

  attr_reader :person

  def persist(item)

    Person.create(
      name: item['name'],
      height: item['height'],
      mass: item['mass'],
      hair_color: item['hair_color'],
      skin_color: item['skin_color'],
      eye_color: item['eye_color'],
      birth_year: item['birth_year'],
      gender: item['gender'],
      planet_id: homeworld_id(item['homeworld']),
      specie_id: specie(item['species'])

    )
  end

  def homeworld_id(planet_id)
    homeworld = planet_id

    return if homeworld.nil?

    homeworld.scan(/\d+/).first.to_i
  end

  def specie(species)
    specie = species.first

    return if specie.nil?

    specie.scan(/\d+/).first.to_i

  end

  def starships(starships)
    starships = starships

    return if starships.nil?

    starships.each do |starship|
      starship.scan(/\d+/).first.to_i
    end
  end

  def assing_person_to_starship(people_id, starships)
    return if starships.nil?

    starships.each do |starship|
      starship_id = starship.scan(/\d+/).first.to_i
      PersonStarship.create(person_id: people_id, starship_id: starship_id)
    end
  end

  def assing_person_to_vehicles(people_id, vehicles)
    return if vehicles.nil?

    vehicles.each do |vehicle|
      vehicle_id = vehicle.scan(/\d+/).first.to_i
      PersonVehicle.create(person_id: people_id, vehicle_id: vehicle_id)
    end
  end
end
