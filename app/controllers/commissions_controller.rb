# ability to check on status(INDEX/SHOW) of costume(client)
# EDIT/UPDATE status(designer)

class CommissionsController < ApplicationController
  def index
    @user = Globaluser.find(params[:globaluser_id])   #not working.  not getting the costume_id of the commissions to show up and confused on how.....
    @commissions = @user.commissions  #I know this isn't right either....
  end

end
