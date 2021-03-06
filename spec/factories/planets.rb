FactoryBot.define do
  factory :planet do
    name { 'Tatooine' }
    rotation_period { '23' }
    orbital_period { '304' }
    diameter { '10465' }
    climate { 'arid' }
    gravity { '1 standard' }
    terrain { 'desert' }
    surface_water { '1' }
    population { '200000' }
  end
end
