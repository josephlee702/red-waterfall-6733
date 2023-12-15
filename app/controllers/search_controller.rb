class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.characters_of_nation(params[:nation])
  end
end