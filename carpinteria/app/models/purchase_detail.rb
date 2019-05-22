class PurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :material


  validates :net_price,
  :presence => {:message => "Campo obligatorio"},
  numericality: {
    greater_than: 99,
    less_than: 999999999,
    :message => "Precio neto no entra en el rango"
  }


   # validates :iva ver para hacer un select en el form

   validates :quantity,
   :presence => {:message => "Campo obligatorio"},
   numericality: {
     greater_than: 0,
     less_than: 999999,
     :message => "Cantidad no entra en el rango"
   }

end
