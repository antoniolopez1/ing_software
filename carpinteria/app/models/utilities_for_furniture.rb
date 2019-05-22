class UtilitiesForFurniture < ApplicationRecord
  belongs_to :utility
  belongs_to :furniture


validates :width,
:presence => {:message => "Campo obligatorio"},
numericality: {
  greater_than: 0,
  :message => "No debe ser negativo"
}
validates :high,
:presence => {:message => "Campo obligatorio"},
numericality: {
  greater_than: 0,
  :message => "No debe ser negativo"
}

validates :thickness,
:presence => {:message => "Campo obligatorio"},
numericality: {
  greater_than: 0,
  :message => "No debe ser negativo"
}

validates :cost,
:presence => {:message => "Campo obligatorio"},
numericality: {
  greater_than: 99,
  less_than: 999999999,
  :message => "Costo no entra en el rango"
}
end
