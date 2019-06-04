class Utility < ApplicationRecord
  belongs_to :utilities_type
  has_many :utilities_for_furniture
  validates :description,
  format: {
  with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
  message: "Solo letras o pasar a mayúsculas" },
  :presence => {:message => "Campo obligatorio"},
  :uniqueness => {:message => "El valor %{value} ya existe"},
  length: {
    maximum: 25,
    message: "No es una descripción del material válido"
   }

end
