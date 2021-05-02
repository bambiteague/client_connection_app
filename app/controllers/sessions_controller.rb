# login and logout functionality

class SessionsController < ApplicationController
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
      flash[:message] = "Incorrect login information"
      #won't want to re-render the new page with prepopulated information
      redirect_to '/login'
    end
  end

  

end