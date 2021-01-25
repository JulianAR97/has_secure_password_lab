class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])

    session[:user_id] = user.id if user
  end

  def destroy

  end
end