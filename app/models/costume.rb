class Costume < ApplicationRecord
  has_many :commissions
  has_many :globalusers, through: :commissions
end
