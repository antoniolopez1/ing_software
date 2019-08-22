class Material < ApplicationRecord
belongs_to :materials_type


validates :description,
format: {
with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
message: "Solo letras o pasar a mayúsculas" },
:presence => {:message => "Campo obligatorio"},
:uniqueness => {:message => "El valor %{value} ya existe"},
length: {
  maximum: 50,
  message: "No es una descripción del material válido"
 }
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
