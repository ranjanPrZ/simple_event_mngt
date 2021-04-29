class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  	  session[:user_id] = user.id
  	  flash[:success] = "Logged in successfully!"
  	  redirect_to '/'
  	else
  	  flash[:alert] = "Register yourself, before login."
  	  redirect_to '/login'
  	end
  end

  def destroy
  	session.clear
  	flash[:success] = "Logged out successfully!"
    redirect_to '/'
  end
end
