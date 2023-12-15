require 'rails_helper'

RSpec.describe 'landing page', type: :feature do
  it 'redirects me to /search when I select a nation and search for members' do
    visit '/'

    select 'Fire Nation', from: "nation"
    click_button("Search For Members")
    expect(current_path).to eq("/search")
  end
end
