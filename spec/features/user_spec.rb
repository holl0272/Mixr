require 'spec_helper'

describe 'users' do

  describe 'GET /' do
    it 'displays register link' do
      visit root_path
      page.should have_link('Register')
    end
  end

  describe 'GET /users/new' do
    it 'displays the create user button', :js => true do
      visit root_path
      click_link('Register')
      page.should have_button('Cancel')
      page.should have_button('Create User')
    end
  end

  describe 'JS cancel_registration_form()' do
    it 'removes the registration form', :js => true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create User')
    end
  end

  describe 'POST /users' do
    it 'creates a new user', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Username', :with => 'Bob')
      fill_in('user_password', :with => 'a')
      fill_in('user_password_confirmation', :with => 'a')
      click_button('Create User')
      page.should_not have_button('Create User')
      page.should have_text('Congratulations, you have successfully created a new Mixr account!')
      page.should have_link('Login')
    end

    it 'does not creates a new subscriber due to failing validation', :js => true do
      visit root_path
      click_link('Register')
      click_button('Create User')
      page.should have_button('Create User')
      page.should have_css('#form ol li', :count => 2)
      page.should have_text('Your registration failed due to: 2 errors')
    end
  end
end
