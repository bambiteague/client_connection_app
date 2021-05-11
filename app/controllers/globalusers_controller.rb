class GlobalusersController < ApplicationController
  def index
  end

  def new
    @user = Globaluser.new
  end

  def create
    @user = Globaluser.new(user_params)
    if @user.save
      session[:globaluser_id] = @user.id
  
      redirect_to globaluser_path(@user)
    else
      render :new
    end
  end

  def show
    redirect_if_not_logged_in
    @user = Globaluser.find(params[:id ])
      # either the newly signed up globaluser being either a Client or a Designer
    redirect_to '/' if !@user
  end

  private

  def user_params
    params.require(:globaluser).permit(:client, :designer, :email, :username, :password)
  end

end
 