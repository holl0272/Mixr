# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do

  describe '.new' do
    it 'creates an instance of User' do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end

    it 'has username, password and password_confirmation' do
      user = User.new(username: 'bob', password: 'a', password_confirmation: 'a')
      expect(user.username).to eq 'bob'
      expect(user.password).to eq 'a'
      expect(user.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      user = User.create(username: 'bob', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end

    it 'fails validation if all user form fields are blank' do
      user = User.create()
      expect(user.id).to be nil
    end

    it 'fails validation if password is blank but a username is supplyied' do
      user = User.create(:username => 'bob')
      expect(user.id).to be nil
    end

    it 'fails validation if username is blank but a password is supplyied' do
      user = User.create(:password => 'a', :password_confirmation => 'a')
      expect(user.id).to be nil
    end

    it 'fails validation if a username and password is supplyied but password_confirmation is wrong' do
      user = User.create(username: 'bob', password: 'a', password_confirmation: 'b')
      expect(user.id).to be nil
    end
  end

end
