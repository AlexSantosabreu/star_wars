class Starship < ApplicationRecord
  validates :name, presence: true
end
