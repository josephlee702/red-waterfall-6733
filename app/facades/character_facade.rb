class CharacterFacade
  def self.characters_of_nation(nation)
    json_response = CharacterService.characters_of_nation(nation)
    json_response.map do |character|
      Character.new(character)
    end
  end
end
