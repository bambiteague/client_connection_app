class Globaluser < ApplicationRecord
  has_many :commissions
  has_many :costumes, through: :commissions

  has_secure_password

  validates :email, uniqueness: { message: "this email address is  already in use on our site"}
  validates :email, confirmation: { message: "please make sure your email confirmation matches your email!"}
  validates :username, presence: { message: "must provide a username for the account"}
  validates :first_name, presence: {message: "please include your name"}
  validates :last_name, presence: {message: "please include your name"}
  validates :password, presence: true
  validates :password,  length: { in: 6..20, message: "password must be between 6-20 characters in length!"}

  def is_designer?
    @user = Globaluser.new
    if @user == @user.designer
      true
    else
      false
    end
  end
end
 
