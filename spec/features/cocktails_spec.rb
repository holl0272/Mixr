require 'spec_helper'

describe 'cocktails' do

  describe 'GET /' do
    it 'displays coctails link' do
      visit root_path
      page.should have_link('Cocktails')
    end
  end

    it 'shows a list of cocktails that have been created', :js => true do
      visit root_path
      click_link('Cocktails')
      page.should_not have_button('Cocktails')
  end
end