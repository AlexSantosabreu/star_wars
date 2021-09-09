class Starships::PersistStarships
  def initialize(starships)
    @starships = Array(starships)
  end

  def call
    starships.each do |starship|
      persist(starship)
    end

  end

  def persist(item)

    Starship.create(
      name: item['name'],
      model: item['model'],
      manufacturer: item['manufacturer'],
      cost_in_credits: item['cost_in_credits'],
      length: item['length'],
      max_atmosphering_speed: item['max_atmosphering_speed'],
      crew: item['crew'],
      passengers: item['passengers'],
      cargo_capacity: item['cargo_capacity'],
      consumables: item['consumables'],
      hyperdrive_rating: item['hyperdrive_rating'],
      MGLT: item['MGLT'],
      starship_class: item['starship_class']
    )
  end

  private

  attr_reader :starships
end
