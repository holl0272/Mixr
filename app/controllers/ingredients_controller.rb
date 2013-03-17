class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.order(:name)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(params[:ingredient])
    @ingredients = Ingredient.order(:name)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

end