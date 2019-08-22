class Salary < ApplicationRecord
  has_many :employee_payment
  belongs_to :employee

  validates :charge_for_hours,
  :presence => {
    :message => "Campo obligatorio"
  },
	numericality: {
    only_integer: true,
    greater_than: 999,
    less_than: 99999,
    :message => ": Ingresar un valor valido"
  }


end
