class UsersController < ApplicationController
  def index
    @users = User.order(:last_name)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])

  end
end