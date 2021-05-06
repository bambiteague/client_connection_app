
# omniauth/authentications still needed 

class GlobalusersController < ApplicationController

  def index
    # if params[:costume_id] && @user = Costume.find_by_id(params[:costume_id])
    #   @user = Costume.globalusers
    # else
    #   flash[:message] = "That costume doesn't appear to exit!" if params[:costume_id]
    #   @user = Globaluser.all
    end
  end

  def new
    @user = Globaluser.new
  end

  def create
    @user = Globaluser.new(user_params)
    if @user.save
      session[:globaluser_id] = @user.id
  
      redirect_to show_path
    else
      render :new
    end
  end

  def show
    redirect_if_not_logged_in
    @user = Globaluser.find(params[:id ])
    # either the newly signed up globaluser being either a Client or a Designer
    # will need validations/authentication checks
    # can't be viewed if not logged in/the correct user
    redirect_to '/' if !@user
  end

  private

  def user_params
    params.require(:globaluser).permit(:client, :designer, :email, :username, :password)
  end

end
 