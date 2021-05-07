class Commission < ApplicationRecord
  belongs_to :globaluser
  belongs_to :costume

  validates :costume_status, presence: true
end
