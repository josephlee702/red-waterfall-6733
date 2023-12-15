class Character
  attr_reader :id,
              :allies,
              :enemies,
              :photourl,
              :name,
              :affiliation

  def initialize(attributes)
    @id = attributes[:_id]
    @allies = array_to_string(attributes[:allies])
    @enemies = array_to_string(attributes[:enemies])
    @photourl = attributes[:photoUrl]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
  end

  def array_to_string(array)
    new_array = array.map { |element| element.strip }
    string = new_array.join(', ')
    string
  end
end

