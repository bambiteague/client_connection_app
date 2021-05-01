class Globaluser < ApplicationRecord
  has_many :costumes, through: :globalusercostumes
end
