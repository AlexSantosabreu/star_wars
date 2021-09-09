require 'rails_helper'

RSpec.describe Vehicles::VehiclesManager do
  describe '#call' do
    context 'when url valid' do
      it 'persist vehicle' do
        url = 'https://swapi.dev/api/vehicles/'

        Vehicles::VehiclesManager.new(url).call

        expect(Vehicle.count).not_to eq(0)
      end
    end
  end
end
