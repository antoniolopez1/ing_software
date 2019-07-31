class SalesCharge < ApplicationRecord
  belongs_to :sale
  belongs_to :customer
end
