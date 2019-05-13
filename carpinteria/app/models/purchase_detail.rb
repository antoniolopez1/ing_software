class PurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :material
end
