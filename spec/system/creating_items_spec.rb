require 'rails_helper'

RSpec.describe "CreatingItems", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'saves and displays the resulting item' do
    visit 'items/new'

    fill_in "Name",	with: "Record Player"
    fill_in "Description", with: "1979 Sony Record Player"

    click_on 'Add Item'

    expect(page).to have_content('Record Player')
    expect(page).to have_content('1979 Sony Record Player')

    item = Item.order("id").last
    expect(item.name).to eq('Record Player')
    expect(item.description).to eq('1979 Sony Record Player')
  end
end
