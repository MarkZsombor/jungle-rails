class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', notice: 'Thank you for registering!'
    else
      redirect_to '/login', notice: 'User Info not valid, try again'
    end
  end

  def destroy
    session.delete(:user_id)
    # session[:user_id] = nil
    redirect_to '/'
  end

end
