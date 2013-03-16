# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Ingredient do

  describe '.new' do
    it 'creates an instance of Ingredient' do
      ingredient = Ingredient.new
      expect(ingredient).to be_an_instance_of(Ingredient)
    end

    it 'has name and image' do
      ingredient = Ingredient.new(name: 'Gin', image: 'url')
      expect(ingredient.name).to eq 'Gin'
      expect(ingredient.image).to eq 'url'
    end
  end

  describe '.create' do
    it 'has an id' do
      ingredient = Ingredient.create(name: 'Gin', image: 'url')
      expect(ingredient.id).to_not be nil
    end

    it 'fails validation if all ingredient params are blank' do
      ingredient = Ingredient.create
      expect(ingredient.id).to be nil
    end

    it 'fails validation if name is blank but an image is supplyied' do
      ingredient = Ingredient.create(:image => 'url')
      expect(ingredient.id).to be nil
    end

    it 'fails validation if image is blank but a name is supplyied' do
      ingredient = Ingredient.create(:name => 'Gin')
      expect(ingredient.id).to be nil
    end
  end

end
