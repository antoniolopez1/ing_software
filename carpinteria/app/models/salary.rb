class Salary < ApplicationRecord	
  has_many :employee_payment
  belongs_to :employee
end
