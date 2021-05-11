module GlobalusersHelper

  def is_designer?
    if Globaluser == Globaluser.designer
      true
    else
      false
    end
  end

  def select_designer_from_list
    Globaluser.username.sort_by do |user|
      user.is_designer?
    end
  end
  
end
