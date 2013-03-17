class SessionController < ApplicationController
  def new
  end

  def create
    @auth = User.where(:username => params[:username]).first
    if @auth.present? && @auth.authenticate(params[:password])
      session[:user_id] = @auth.id
    else
      session[:user_id] = nil
    end
  end

  def destroy
    session[:user_id] = nil
  end
end