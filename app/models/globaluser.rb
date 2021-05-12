class Globaluser < ApplicationRecord
  has_many :commissions
  has_many :costumes, through: :commissions

  has_secure_password

  validates :username, presence: {message: "Please create a username for your account!"}
  validates :username, uniqueness: {message: "Username already in use!"}
  validates :email, uniqueness: {message: "Uh oh! It looks like this email address is already in use for our site! Please submit a different email address."}
  validates :password, presence: {message: "OOPS! Make sure you've entered a password that's 6-20   characters in length!"}
  validates :password,  length: { in: 6..20 }

  scope :designer, -> { where(designer: true) }
  scope :client, -> { where(client: true) }

  def self.from_omniauth(response)
    Globaluser.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      # u.username = response[:info][:name]
      u.email = response[:info][:email]
      u.first_name = response[:info][:first_name]
      u.last_name = response[:info][:last_name]
      u.password = SecureRandom.hex(15)

      redirect_to 'complete_path'
          # Create a redirect_to here to a view page that has a form to finish the sign up proces, letting the Google created user set their 'username' and select their account type 'client vs designer' if it's their first time signing in with Google and they don't already have a pre-existing account (thus it creates one from this response)
    end
  end

end
 
