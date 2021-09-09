class Vehicles::PersistVehicles
  def initialize(vehicles)
    @vehicles = Array(vehicles)
  end

  def call
    vehicles.each do |vehicle|
      persist(vehicle)
    end

  end

  def persist(item)

    Vehicle.create(
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
      vehicle_class: item['vehicle_class']
    )
  end

  private

  attr_reader :vehicles
end
