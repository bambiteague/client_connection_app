class GlobalusersController < ApplicationController
  def index
    @designer = Globaluser.is_designer?  #NOT WORKING!!!!
    @client = Globaluser.is_client?
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
    @user = Globaluser.find_by(id: params[:id])
    redirect_to '/' if !@user
  end

  def profile
    @user = current_user
  end

  def complete
    @user = Globaluser.find_by(id: params[:id])
  end

  def destroy
    Globaluser.find(params[:id]).destroy
    flas[:success] = "Account successfully deleted"
    redirect_to '/'
  end

  private

  def user_params
    params.require(:globaluser).permit(:client, :designer, :email, :username, :password)
  end

end
 