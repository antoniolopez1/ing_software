class Furniture < ApplicationRecord

  validates :description,
  format: {
  with: /\A[0-9ÁÉÍÓÚÑA-Z\. ]+\z/,
  message: "Solo números, letras o pasar a mayúsculas" },
  :presence => {:message => "Campo obligatorio"},
  :uniqueness => {:message => "El valor %{value} ya existe"},
  length: {
    maximum: 25, allow_blank: false,
    message: "No es una descripción mueble válida"
   }

   validates :cost,
   numericality: {
     greater_than: 0,
     less_than: 999999999,
     :message => "Costo entra no entra en el rango"
   }
   validates :profit,
   numericality: {
     greater_than: 0,
     less_than: 999999999,
     :message => "Costo no entra en el rango"
   }


end
