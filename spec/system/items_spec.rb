require 'rails_helper'

RSpec.describe 'Creating an Item', type: :system do
  before do
    visit new_item_path
  end

  scenario 'valid inputs' do
    fill_in 'Name', with: "Record player"
    fill_in 'Description', with: '1969 Sony supercool'
    click_on 'Save Item'

    expect(page).to have_content('Record Player')
  end
end