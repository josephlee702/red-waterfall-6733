require 'rails_helper'

RSpec.describe 'landing page', type: :feature do
  scenario 'redirects me to /search click fire nation and search for members', :vcr do
    visit '/'

    select 'Fire Nation', from: "nation"
    click_button("Search For Members")
    expect(current_path).to eq("/search")
  end
end
