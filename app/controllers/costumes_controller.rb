class CostumesController < ApplicationController
  def index
    if current_user 
      @costumes = Costume.all
    else
      flash.now[:message] = "You don't appear to have any costumes in progress!"
      redirect_to globaluser_costumes(@costumes)
    end
  end

  def new
    @costume = current_user.costumes.new
    @designers = []
    Globaluser.all.each do |user|
      @designers << user if user.designer == true
    end
    @designers
  end

  def create
    @designers = []
    Globaluser.all.each do |user|
      @designers << user if user.designer == true
    end
    @designers
  
    @costume = current_user.costumes.build(costume_params)
    if @costume.save
      redirect_to globaluser_costume_path(@costume)
    else
      render :new
    end
  end

  def show
    @costume = Costume.last  # A solution, possibly not the best one....
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
