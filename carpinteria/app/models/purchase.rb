class Purchase < ApplicationRecord
 has_many :purchase_details
 belongs_to :provider
end
