class CostumesController < ApplicationController
  def index
    if session[:globaluser_id] && current_user && current_user.costumes.any?
      @costumes = current_user.costumes
    else
      flash.now[:message] = "You don't appear to have any costumes in progress!"
      redirect_to profile_path(@user) 
   end 
  end

  def new
    @user = current_user
    @designers = Globaluser.designer.all
  end

  def create
    @costume = current_user.costumes.build(costume_params)
    if @costume.save
      redirect_to globaluser_costume_path(@costume, @user)
    else
      falsh.now[:message] = "oops that didn't save!"
      render :new
    end
  end

  def show
    @user = Globaluser.find_by_id(params[:id])
    @costume = Costume.find_by(globaluser_id: params[:globaluser_id])
    # binding.pry
    redirect_to globaluser_costume_path(@user, @costume)
 
  end

  def edit
    @costume = Costume.find_by(id: params[:id])
  end

  def update
    @costume = Costume.find_by(id: params[:id])
  end

  def delete
    @costume = Costume.find_by(id: params[:id])
    @costume.destroy
  end


  private

  def costume_params
    params.require(:costume).permit(:title, :style, :reference_sheet, :globaluser_id)
  end

end
