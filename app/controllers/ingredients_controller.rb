class IngredientsController < ApplicationController
  before_filter :logged_in

  def index
    @ingredients = Ingredient.order(:name)
  end

  def new
    @user = Ingredient.new
  end

  def create
    Ingredient.create(params[:ingredient])
    @ingredients = Ingredient.order(:name)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

end