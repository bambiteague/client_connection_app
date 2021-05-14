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
    @designers = Globaluser.designer
    @costume = Costume.new
  end

  def create
    # binding.pry
    if logged_in?
      @costume =current_user.costumes.build(costume_params)
      @user = params[:globaluser_id]
      @costume.save
      current_user.costumes << @costume
      if  @costume.save
        redirect_to globaluser_costume_path(@user, @costume)
      else
        flash.now[:message] = "oops that didn't save!"
        render :new
      end
    else 
      @costume = Costume.new(costume_params)
    end
  end

  def show
    @user = current_user
    @costume = Costume.find_by_id(params[:id])
    # binding.pry
    redirect_to globaluser_costume_path(@user, @costume)
  end

  def edit
    # binding.pry
    @costume = Costume.find_by_id(id: params[:id])
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
