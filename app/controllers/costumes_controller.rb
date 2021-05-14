class CostumesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @user_costumes = @user.costumes
      @costume = @user_costumes.ids   #grabs just that user's costume ids for :id params needed (huzzah!)
   end 
  end

  def new
    @user = current_user
    @designers = Globaluser.designer
    @costume = Costume.new
  end

  def create
    if logged_in?
      @costume =current_user.costumes.build(costume_params)   # <---This method is working, but is gross, non dry code...oi
      @user = params[:globaluser_id]                          # come back to last / refactor
      @costume.save
      current_user.costumes << @costume
      if  @costume.save
        redirect_to globaluser_costumes_path(@user, @costume)
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
  end

  def edit
    if logged_in?
      @current_user_costumes = current_user.costumes
      @costume = @current_user_costumes.find_by_id(params[:id])  
    end
  end

  def update
    if logged_in?
      @current_user_costumes = current_user.costumes
      @costume = @current_user_costumes.find_by_id(params[:id])  
    end
    if @costume.update(costume_params)
      redirect_to globaluser_costume_path(@costume)  
    else
      flash.now[:message] = "Doesn't appear to have updated your costume"
      render :edit
    end
  end

  def destroy
    if logged_in?
      @current_user_costumes = current_user.costumes
      @costume = @current_user_costumes.find_by_id(params[:id])  
    end
    @costume.destroy
    redirect_to globaluser_costumes_path(@current_user_costumes)
  end


  private

  def costume_params
    params.require(:costume).permit(:title, :style, :reference_sheet, :globaluser_id)
  end

  # def find_current_user_costumes
  #   if logged_in?
  #     @current_user_costumes = current_user.costumes
  #     @costume = @current_user_costumes.find_by_id(params[:id])     <---code broke when I tried using it by method name from here..??
  #   end
  # end

end
