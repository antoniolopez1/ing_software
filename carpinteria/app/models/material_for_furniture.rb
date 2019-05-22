class MaterialForFurniture < ApplicationRecord
  belongs_to :material
  belongs_to :furniture

  validates :quantity,
  :presence => {:message => "Campo obligatorio"},
  numericality: {
    greater_than: 0,
    less_than: 999999,
    :message => "Cantidad no entra en el rango"
  }
  validates :cost,
  :presence => {:message => "Campo obligatorio"},
  numericality: {
    greater_than: 99,
    less_than: 999999999,
    :message => "Costo no entra en el rango"
  }
end
