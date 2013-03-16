class UsersController < ApplicationController
  before_filter :logged_in

  def index
    @users = User.order(:username)
  end

  def new
    @user = User.new
  end

  def create
    User.create(params[:user])
    @users = User.order(:username)
  end

  def show
    @user = User.find(params[:id])
  end

end