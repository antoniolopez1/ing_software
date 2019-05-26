class Employee < ApplicationRecord
	has_many :hours_history
	has_one :salary



	validates :name,
	:presence => {:message => "Campo obligatorio"},
	format: { with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
	message: "Solo letras o pasar a mayúsculas" }


	validates :lastname,
	:presence => {:message => "Campo obligatorio"},
	format: { with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
	message: "Solo letras o pasar a mayúsculas" }



	validates :address,
	:presence => {:message => "Campo obligatorio"},
	format: { with: /\A[0-9ÁÉÍÓÚÑA-Z\. ]+\z/,
	message: "Solo letras o pasar a mayúsculas" }

	validates :telephone,
	:presence => {:message => "Campo obligatorio"},
	:numericality  => { only_integer: true,
	greater_than_or_equal_to: 1000000 ,
	less_than_or_equal_to: 99999999999999,
	:message => "No es un número de teléfono válido"}


	validates :document,
	:presence => {:message => "Campo obligatorio"},
	:uniqueness => {:message => "El valor %{value} ya existe"},
	format: { with: /\A[0-9A-Z\. ]+\z/,
	message: "Solo números, letras o pasar a mayúsculas" },
	length: {
	  minimum: 5, maximum: 10, allow_blank: false,
	  message: "No es un número de documento válido"
	 }


validates :speciality,
:presence => {:message => "Campo obligatorio"},
format: { with: /\A[ÁÉÍÓÚÑA-Z\. ]+\z/,
message: "Solo letras o pasar a mayúsculas" }


end
