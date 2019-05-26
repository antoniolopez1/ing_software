class UPurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :utility
end
