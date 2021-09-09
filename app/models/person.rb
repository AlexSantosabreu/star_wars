class Person < ApplicationRecord
  validates :name, presence: true

  has_many :person_vehicles
  has_many :vehicles, through: :person_vehicles
end
