
class CommissionsController < ApplicationController
  def index
    if logged_in?
      @user = current_user
    end
    @commissions = @user.commissions 
  end

  def edit

  end

  def update

  end

end
