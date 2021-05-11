# login and logout functionality

class SessionsController < ApplicationController
  helper SessionsHelper
  
  def destroy
    session.clear
    redirect_to root_path
  end

  def create
    user = Globaluser.find_by(username: params[:globaluser][:username])
    if user && user.authenticate(params[:globaluser][:password])
      session[:globaluser_id] = user.id
      redirect_to globaluser_path(user)
    else
      flash.now[:message] = "Incorrect login information"
    
      redirect_to '/login'
    end
  end

end