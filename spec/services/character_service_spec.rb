require 'rails_helper'

RSpec.describe CharacterService do
  describe 'class methods' do
    context '#conn' do
      it 'returns a Faraday connection' do
        conn = CharacterService.conn

        expect(conn).to be_a(Faraday::Connection)
      end
    end

    context '#get_url' do
      scenario 'get_url', :vcr do
        response = CharacterService.get_url("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation&perPage=100")

        expect(response).to be_an(Array)
      end
    end

    context 'characters of nation' do
      scenario 'returns all characteres of a nation', :vcr do
        fire = "fire+nation"
        water = "water+tribe"
        earth = "earth+kingdom"
        air = "air+nomads"

        response1 = CharacterService.characters_of_nation(fire)
        response2 = CharacterService.characters_of_nation(water)
        response3 = CharacterService.characters_of_nation(earth)
        response4 = CharacterService.characters_of_nation(air)

        expect(response1.count).to eq(97)
        expect(response2.count).to eq(44)
        expect(response3.count).to eq(76)
        expect(response4.count).to eq(15)
      end
    end
  end
end
