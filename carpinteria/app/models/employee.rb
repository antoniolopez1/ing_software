class Employee < ApplicationRecord
	has_one :hours_histories
	has_one :salaries



validates :name,  	  	  :presence => {:message => "Campo obligatorio"},
						  format: { with: /\A[a-zA-Z]+\z/, message: "Solo letras" }
validates :lastname,  	  :presence => {:message => "Campo obligatorio"},
						  format: { with: /\A[a-zA-Z]+\z/, message: "Solo letras" }
validates :address,  	  :presence => {:message => "Campo obligatorio"} 
validates :telephone,  	  :presence => {:message => "Campo obligatorio"},
						  numericality: { only_integer: true }
validates :document,  	  :presence => {:message => "Campo obligatorio"}, 
						  :uniqueness => {:message => "El valor %{value} ya existe"},
						  numericality: { only_integer: true }
validates :speciality, 	  :presence => {:message => "Campo obligatorio"},
						  format: { with: /\A[a-zA-Z]+\z/, message: "Solo letras" }


end
