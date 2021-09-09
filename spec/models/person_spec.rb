require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:person_vehicles) }
    it { is_expected.to have_many(:vehicles).through(:person_vehicles) }
  end
end
