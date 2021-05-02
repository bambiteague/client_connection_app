class Globaluser < ApplicationRecord
  has_many :commissioned_costumes, through: :commissions, source: :costume
  has_secure_password
end
 