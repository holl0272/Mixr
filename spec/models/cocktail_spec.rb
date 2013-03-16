# == Schema Information
#
# Table name: cocktails
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Cocktail do

  describe '.new' do
    it 'creates an instance of Cocktail' do
      cocktail = Cocktail.new
      expect(cocktail).to be_an_instance_of(Cocktail)
    end

    it 'has name, image and description' do
      cocktail = Cocktail.new(name: 'Gin and Tonic', image: 'url', description: '2 parts gin 1 part tonic')
      expect(cocktail.name).to eq 'Gin and Tonic'
      expect(cocktail.image).to eq 'url'
      expect(cocktail.description).to eq '2 parts gin 1 part tonic'
    end
  end

  describe '.create' do
    it 'has an id' do
      cocktail = Cocktail.create(name: 'Gin and Tonic', image: 'url', description: '2 parts gin 1 part tonic')
      expect(cocktail.id).to_not be nil
    end

    it 'fails validation if all cocktail form fields are blank' do
      cocktail = Cocktail.create
      expect(cocktail.id).to be nil
    end

    it 'fails validation if name is blank but an image and description are supplyied' do
      cocktail = Cocktail.create(:image => 'url', :description => '2 parts gin 1 part tonic')
      expect(cocktail.id).to be nil
    end

    it 'fails validation if image is blank but a name and description are supplyied' do
      cocktail = Cocktail.create(:name => 'Gin and Tonic', :description => '2 parts gin 1 part tonic')
      expect(cocktail.id).to be nil
    end

    it 'fails validation if description is blank but a name and image are supplyied' do
      cocktail = Cocktail.create(:name => 'Gin and Tonic', :image => 'url')
      expect(cocktail.id).to be nil
    end
  end

end
