class GlobalusersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  private

  def globaluser_params
    params.require(:globalusers).permit(:client, :designer, :password, :email )
  end

end
