class Globaluser < ApplicationRecord
  has_many :commissions
  has_many :costumes, through: :commissions

  has_secure_password

  validates :username, presence: {message: "Please create a username for your account!"}
  validates :username, uniqueness: {message: "Username already in use!"}
  validates :email, uniqueness: {message: "Uh oh! It looks like this email address is already in use for our site! Please submit a different email address."}
  # validates :email, confirmation: true
  # validates :email_confirmation, presence: {message: "Please confirm your email address!"}
  validates :password, presence: {message: "OOPS! Make sure you've entered a password that's 6-20 characters in length!"}
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
 
