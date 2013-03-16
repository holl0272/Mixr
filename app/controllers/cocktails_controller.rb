class CocktailsController < ApplicationController
  before_filter :logged_in

  def index
    @cocktails = Cocktail.order(:name)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(params[:cocktail])
    @cocktails = Cocktail.order(:name)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

end