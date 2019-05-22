class Purchase < ApplicationRecord
 has_many :purchase_details
 belongs_to :provider

 validates_date :purchase_date,
   :on_or_before => :today,
   :message => 'La fecha debe ser de hoy o anteriores'



 validates :amount,
 :presence => {:message => "Campo obligatorio"},
 numericality: {
   greater_than: 99,
   less_than: 999999999,
   :message => "Importe no entra en el rango"
 }

end
