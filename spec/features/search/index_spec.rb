require 'rails_helper'

RSpec.describe '/search index page', type: :feature do
  scenario 'shows all characters affiliated with a nation', :vcr do
    visit 'http://localhost:3000/search?nation=fire%2Bnation&commit=Search+For+Members'

    expect(page).to have_content("Fire Nation")
    expect(page).to have_content("Count of characters: 97")
    #how do I write a line to count the number of objects in my table...?
  end
end
