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

class Cocktail < ActiveRecord::Base
  attr_accessible :name, :image, :description
  has_and_belongs_to_many :users
  has_and_belongs_to_many :ingredients
  validates :name, :image, :description, :presence => true
end
