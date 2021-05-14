class Commission < ApplicationRecord
  belongs_to :globaluser
  belongs_to :costume

  # validates :costume_status, presence: {message: "Please update the commission's status"}
end
