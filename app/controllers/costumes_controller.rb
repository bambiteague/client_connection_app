# full MVC/CRUD actions to see 'commissioned_costumes'

class CostumesController < ApplicationController
  def index
    @costume = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
  end

  def update
  end

  def edit
  end

  def delete
  end

  private

  def costume_params
    params.require(:costumes).permit(:title, :type, :reference_sheet)
  end

end
