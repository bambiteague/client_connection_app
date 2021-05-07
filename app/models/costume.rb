class Costume < ApplicationRecord
  has_many :commissions
  has_many :globalusers, through: :commissions

  validates :title, presence: true
  validates :type, inclusion: {in: %w(head mini-partial 3/4-partial fullsuit-digigrade fullsuit-plantigrade hand-paws feet-paws)}
  validates :reference_sheet, presence: true
end
