class Costume < ApplicationRecord
  has_many :commissions
  has_many :globalusers, through: :commissions

  validates :title, presence: {message: "Don't forget to add a title in order to submit your costume commission request!"}
  # validates :style, inclusion: {in: %w(head mini-partial 3/4-partial fullsuit-digigrade fullsuit-plantigrade hand-paws tail feet-paws)}
  validates :reference_sheet, presence: {message: "A reference sheet is required to submit your character for costume fabrication!"}
end
