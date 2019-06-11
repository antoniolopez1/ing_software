class Utility < ApplicationRecord
  belongs_to :utilities_type
  has_many :utilities_for_furniture
  

end
