class Costume < ApplicationRecord
  has_many :commissions
  has_many :globalusers, through: :commissions

  validates :title, presence: {message: "must have a title"}
  validates :type, inclusion: {in: %w(head mini-partial 3/4-partial fullsuit-digigrade fullsuit-plantigrade hand-paws feet-paws),
  message: "%{value} is not a valid suit type"}
  validates :reference_sheet, presence: {message: "commission requests must include a reference sheet of the character you're commissioninga costume of!"}
end
