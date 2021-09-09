require 'rails_helper'

RSpec.describe Species::SpeciesManager do
  describe '#call' do
    context 'when url valid' do
      it 'persist species' do
        url = 'https://swapi.dev/api/species/'

        Species::SpeciesManager.new(url).call

        expect(Specie.count).not_to eq(0)
      end
    end
  end
end
