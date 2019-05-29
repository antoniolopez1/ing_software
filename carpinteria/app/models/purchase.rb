class Purchase < ApplicationRecord
 has_many :purchase_details
 belongs_to :provider


 validates :amount,
 :presence => {:message => "Campo obligatorio"},
 numericality: {
   greater_than: 99,
   less_than: 999999999,
   :message => "Importe no entra en el rango"
 }

end
