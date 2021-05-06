class Globaluser < ApplicationRecord
  has_many :commissions
  has_many :costumes, through: :commissions
  
  has_secure_password

  def is_designer?
    @user = Globaluser.new
    if @user == @user.designer
      true
    else
      false
    end
  end

end
 
