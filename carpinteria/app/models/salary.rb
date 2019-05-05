class Salary < ApplicationRecord
  belongs_to :employee

  validates :salary_charge_for_hours, :presence => {:message => "Campo obligatorio"}, 
  			numericality: { greater_than: 999, less_than: 99999 }
	  	  

end
