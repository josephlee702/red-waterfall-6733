class SearchController < ApplicationController
  def index
    @total_characters = CharacterFacade.characters_of_nation(params[:nation])
    @characters_per_page = @total_characters.take(25)
  end
end