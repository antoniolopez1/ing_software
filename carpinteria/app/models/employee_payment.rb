class EmployeePayment < ApplicationRecord
  belongs_to :salary

  validates :amount,
  numericality: {
    greater_than: 0,
    less_than: 999999999,
    :message => "Monto no entra en el rango"
  }
end
