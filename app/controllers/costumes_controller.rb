class CostumesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @user_costumes = current_user.costumes
      @costume = Costume.all.each do |costume|
        costume.id
      end
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

  # def show
  #   @user = current_user
  #   @costume = Costume.find_by_id(params[:id])
  #   redirect_to globaluser_costume_path(@user, @costume)
  # end

  def edit
    if current_user == params[:globaluser_id]
      @costume = current_user.costumes
    end
  end

  def update
    @costume = Costume.find_by(globaluser_id: params[:globaluser_id])  # <----not working, going straight to the else, 
                           # but :edit isn't loading properly because this @costume, is different than the one set in the edit
    if @costume.update(comment_params)
      redirect_to globaluser_costumes_path(@costume)
    else
      render :edit
    end
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
