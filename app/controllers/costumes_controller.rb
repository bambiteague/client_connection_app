class CostumesController < ApplicationController
  def index
    if current_user
      @costumes = Costume.find_by(:globaluser_id params[:globaluser_id])
      @costumes
    else
      flash.now[:message] = "You don't appear to have any costumes in progress!"
      redirect_to new_globaluser_costume(@costumes)
    end
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = current_user.costumes.build(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def show
    @costume = Costume.find_by(id: params[:id])
  end

  def edit
    @costume = Costume.find_by(id: params[:id])
  end

  def update
    @costume = Costume.find_by(id: params[:id])
    #needs more (if/else)
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
