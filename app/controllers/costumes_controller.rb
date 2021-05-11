# full MVC/CRUD actions to see 'commissioned_costumes'

class CostumesController < ApplicationController

  def index
    if params[:globaluser_id] && @costumes = Costume.find_by(params[:globaluser_id])
      @costumes = @costumes.all
    else
      flash.now[:message] = "You don't appear to have any costumes in progress!"
      redirect_to :new_globaluser_costume
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
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :style, :reference_sheet, :globaluser_id)
  end

end
