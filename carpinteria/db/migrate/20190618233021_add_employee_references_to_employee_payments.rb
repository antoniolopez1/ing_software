class AddEmployeeReferencesToEmployeePayments < ActiveRecord::Migration[5.2]
  def change
    add_reference :employee_payments, :employee, foreign_key: true
  end
end
