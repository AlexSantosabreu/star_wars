require 'rails_helper'

RSpec.describe Planets::PlanetsManager do
  describe '#call' do
    context 'when url valid' do
      it 'persist planets' do
        url = 'https://swapi.dev/api/planets/'

        Planets::PlanetsManager.new(url).call

        expect(Planet.count).not_to eq(0)
      end
    end
  end
end
