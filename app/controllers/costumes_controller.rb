# full MVC/CRUD actions to see 'commissioned_costumes'

class CostumesController < ApplicationController
  def index
    @costume = Costume.all
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

  def update
  end

  def edit
  end

  def delete
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :type, :reference_sheet)
  end

end
