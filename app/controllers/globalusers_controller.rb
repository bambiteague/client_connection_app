  # sign-up and create a new user
  # omniauth/authentications

class GlobalusersController < ApplicationController

  def new
    @user = Globaluser.new
  end

  def create
    @user = Globaluser.new(user_params)
    if @user.save
      session[:globaluser_id] = @user.id
      redirect_to :show
    else
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:globaluser).permit(:client, :designer, :email, :username, :password)
  end

end
 