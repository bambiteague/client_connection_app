class Costume < ApplicationRecord
  has_many :users_who_commissioned, through: :commissions, source: :globaluser
end
