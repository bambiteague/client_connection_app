class Costume < ApplicationRecord
 belongs_to :globaluser, through: :globalusercostume
end
