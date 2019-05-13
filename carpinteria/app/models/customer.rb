class Customer < ApplicationRecord



validates :name,  	  	  :presence => {:message => "Campo obligatorio"},
						  format: { with: /\A[a-zA-Z]+\z/, message: "Solo letras" }
validates :lastname,  	  :presence => {:message => "Campo obligatorio"},
						  format: { with: /\A([a-zA-Z]|[a-zA-Z][\. ])+\z/, message: "Solo letras" }
validates :address,  	  :presence => {:message => "Campo obligatorio"}
validates :telephone,  	  :presence => {:message => "Campo obligatorio"},
						  numericality: { only_integer: true }
validates :document,  	  :presence => {:message => "Campo obligatorio"},
						  :uniqueness => {:message => "El valor %{value} ya existe"},
						  numericality: { only_integer: true }
validates :ruc, 		  numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 9  }


end

# // :length => {:max  =<10, :message=> "Maximo de caracteres: 10"} :length => { :maximun  =1, :message=> "Maximo de caracteres: 1"}
