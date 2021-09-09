require 'rails_helper'

RSpec.describe Starships::StarshipsManager do
  describe '#call' do
    context 'when url valid' do
      it 'persist starships' do
        url = 'https://swapi.dev/api/starships/'

        Starships::StarshipsManager.new(url).call

        expect(Starship.count).not_to eq(0)
      end
    end
  end
end
