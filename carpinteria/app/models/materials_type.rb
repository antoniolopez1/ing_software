class MaterialsType < ApplicationRecord
  validates :description,
  format: {
  with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
  message: "Solo letras o pasar a mayúsculas" },
  :presence => {:message => "Campo obligatorio"},
  :uniqueness => {:message => "El valor %{value} ya existe"},
  length: {
    maximum: 50, allow_blank: false,
    message: "No es una descripción válida"
   }
end
