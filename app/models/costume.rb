class Costume < ApplicationRecord
  belongs_to :client, :class_name => "User"
  belongs_to :designer, :class_name => "User" 
end
