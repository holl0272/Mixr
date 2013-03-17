require 'spec_helper'

describe 'Session' do

  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
    end
  end

  describe 'GET /login' do
    it 'displays the login button', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Cancel')
      page.should have_button("Start Mix'n")
    end
  end

  describe 'JS cancel_user_form()' do
    it 'removes the create user form', :js => true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create User')
    end
  end

  describe 'POST /login' do
    let(:user) {User.create(username: 'bob', password: 'a', password_confirmation: 'a')}

    it 'logs the user into the system if credentials are correct', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Username', :with => user.username)
      fill_in('Password', :with => 'a')
      click_button("Start Mix'n")
      visit root_path
      page.should_not have_button("Start Mix'n")
    end


    it 'does not log the user into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Username', :with => 'bob')
      fill_in('Password', :with => 'b')
      click_button("Start Mix'n")
      page.should have_button("Start Mix'n")
    end
  end
end