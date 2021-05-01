class Commission < ApplicationRecord
  belongs_to :globaluser
  belongs_to :costume
end
