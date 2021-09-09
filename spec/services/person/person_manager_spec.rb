require 'rails_helper'

RSpec.describe Person::PersonManager do
  describe '#call' do
    context 'when url valid' do
      it 'persist person' do
        create_list(:starship, 50)
        create_list(:vehicle, 50)

        url = 'https://swapi.dev/api/people/'

        Person::PersonManager.new(url).call

        expect(Person.count).not_to eq(0)
      end
    end
  end
end
