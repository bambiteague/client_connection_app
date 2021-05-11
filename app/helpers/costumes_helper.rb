module CostumesHelper
  def is_designer?
    if Globaluser == Globaluser.designer
      true
    else
      false
    end
  end
end
