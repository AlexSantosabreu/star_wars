FactoryBot.define do
  factory :vehicle do
    name { 'Sand Crawler' }
    model { 'Digger Crawler' }
    manufacturer { 'Corellia Mining Corporation' }
    cost_in_credits { '150000' }
    length { '36.8' }
    max_atmosphering_speed { '30' }
    crew { '46' }
    passengers { '30' }
    cargo_capacity { '50000' }
    consumables { '2 months' }
    vehicle_class { 'wheeled' }
  end
end
