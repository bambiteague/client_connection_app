module GlobalusersHelper
  def is_designer?
    current_user.designer == true && current_user.client == false
  end

  def is_client?
  current_user.client == true && current_user.designer == false
  end
end
