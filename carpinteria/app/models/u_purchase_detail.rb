class UPurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :utilities_type
end
