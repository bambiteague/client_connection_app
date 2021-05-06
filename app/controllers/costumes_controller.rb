# full MVC/CRUD actions to see 'commissioned_costumes'

class CostumesController < ApplicationController
  def index
    if params[:commission_id] && @comms = Commission.find_by_id(params[:costume_id])
      @comms = @comms.costumes
    else
      flash[:message] = "That costume doesn't exist!"
      @costumes = Costume.all
    end
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Commission.costume.build(costume_params)
    if @costume.save
      redirect_to costumes_path
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
    params.require(:costume).permit(:title, :type, :reference_sheet)
  end

end
