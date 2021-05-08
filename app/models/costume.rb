class Costume < ApplicationRecord
  has_many :commissions
  has_many :globalusers, through: :commissions

  validates :title, presence: {message: "Don't forget to add a title in order to submit your costume commission request!"}
  validates :style, inclusion: {in: %w(head mini-partial 3/4-partial fullsuit-digigrade fullsuit-plantigrade hand-paws feet-paws)}
        #still need to add a validation message about this data. May need to change validation type for this element after I create the drop down for it's data
  validates :reference_sheet, presence: {message: "A reference sheet is required to submit your character for costume fabrication!"}
end
