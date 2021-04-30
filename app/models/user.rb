class User < ApplicationRecord
  has_many :costumes, through :orders
  has_many :costumes

  def Client
   client = User.new
  end

  alias client user

  def Designer
    designer = User.new
  end

  alias designer user
end
