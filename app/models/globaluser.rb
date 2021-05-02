class Globaluser < ApplicationRecord
  has_many :commissioned_costumes, through: :commissions, source: :costume
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
 