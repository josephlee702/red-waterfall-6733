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
      scenario 'returns all fire nation characteres', :vcr do
        response = CharacterService.get_url("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation&perPage=100")

        expect(response.count).to eq(97)
      end
    end
  end
end
