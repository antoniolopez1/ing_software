class Salary < ApplicationRecord
  has_many :employee_payment
  belongs_to :employee

  validates :charge_for_hours,
  :presence => {
    :message => "Campo obligatorio"
  },
	numericality: {
    greater_than: 999,
    less_than: 99999
  }


end
