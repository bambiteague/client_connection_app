class Costume < ApplicationRecord
  belongs_to :globalusers, through: :globalusercostumes
end
