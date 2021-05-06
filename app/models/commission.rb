class Commission < ApplicationRecord
  belongs_to :globaluser
  belongs_to :costume

  validates :costume_status, presence: {message: "be sure to update the status!"}
end
