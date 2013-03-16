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

class Ingredient < ActiveRecord::Base
  attr_accessible :name, :image
  has_and_belongs_to_many :cocktails
  validates :name, :image, :presence => true
end
