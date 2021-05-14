# ability to check on status(INDEX/SHOW) of costume(client)
# EDIT/UPDATE status(designer)

class CommissionsController < ApplicationController
  def index
    @user = Globaluser.find(params[:globaluser_id])   
    @commissions = @user.commissions 
  end

end
