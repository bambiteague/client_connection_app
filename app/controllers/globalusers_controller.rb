class GlobalusersController < ApplicationController
  def index
    @designer = Globaluser.designer.all 
    @client = Globaluser.client.all
  end

  def new
    @user = Globaluser.new
  end

  def create
    @user = Globaluser.new(user_params)
    if @user.save
      session[:globaluser_id] = @user.id
      redirect_to profile_path
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
    @costumes = @user.costumes
    @commissions = @user.commissions
  end

  def complete
    @user = Globaluser.find_by(id: params[:id])
  end

  # def destroy
  #   Globaluser.destroy(1)
  #   redirect_to '/'
  # end

  private

  def user_params
    params.require(:globaluser).permit(:client, :designer, :email, :username, :password)
  end

end
 