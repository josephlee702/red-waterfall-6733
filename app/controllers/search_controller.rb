class SearchController < ApplicationController
  def index
    @characters = SearchCharacterFacade.characters_of_nation(params[:nation])
  end
end