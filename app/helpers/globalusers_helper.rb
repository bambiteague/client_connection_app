module GlobalusersHelper

  def is_designer?
    @user = Globaluser.new
    if @user == @user.designer
      true
    else
      false
    end
  end
  
end
