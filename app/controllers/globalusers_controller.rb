  # sign-up and create a new user
  # omniauth/authentications

class GlobalusersController < ApplicationController

  def new
    @user = Globaluser.new
  end

  def create
    @user = Globaluser.new(globaluser_params)
    #needs more
  end

  private

  def globaluser_params
    params.require(:globalusers).permit(:client, :designer, :email, :first_name, :last_name, :username, :password)
  end

end
