class MyValidator < ActiveModel::Validator
      def validate(record)
        unless record.description.ends_with? 'S'
          record.errors.add :description, "Debe estar en plural"
        end
      end
end


class MeasureUnit < ApplicationRecord
include ActiveModel::Validations
validates_with MyValidator


  validates :description,
  format: {
  with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
  message: "Solo letras o pasar a mayúsculas" },
  :presence => {:message => "Campo obligatorio"},
  :uniqueness => {:message => "El valor %{value} ya existe"},
  length: {
    maximum: 25, allow_blank: false,
    message: "No es una descripción mueble válida",
   }

end
