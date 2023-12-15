require 'rails_helper'

describe CharacterFacade do
  describe 'class methods' do

    feature '#characters_of_nation' do
      scenario 'finds all characters of a nation', :vcr do
        expect(CharacterFacade.characters_of_nation("fire+nation").count).to eq(97)
        expect(CharacterFacade.characters_of_nation("fire+nation").first).to be_a(Character)
      end
    end
  end
end
