require 'rails_helper'

RSpec.describe '/search index page', type: :feature do
  scenario 'shows all characters affiliated with a nation', :vcr do
    visit 'http://localhost:3000/search?nation=fire%2Bnation&commit=Search+For+Members'

    select 'Fire Nation', from: "nation"
    click_button("Search For Members")
    expect(current_path).to eq("/search")
  end
end
