class Person < ApplicationRecord
  validates :name, presence: true

  has_many :person_vehicles
  has_many :vehicles, through: :person_vehicles

  has_many :person_starships
  has_many :starships, through: :person_starships
end
