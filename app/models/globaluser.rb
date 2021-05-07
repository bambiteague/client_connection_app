class Globaluser < ApplicationRecord
  has_many :commissions
  has_many :costumes, through: :commissions

  has_secure_password

  validates :email, confirmation: true
  validates :username, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :password,  length: { in: 6..20 }

  def is_designer?
    @user = Globaluser.new
    if @user == @user.designer
      true
    else
      false
    end
  end

end
 
