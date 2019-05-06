class CreateEmployeePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_payments do |t|
      t.references :salary, foreign_key: true
      t.float :amount
      t.float :balance

      t.timestamps
    end
  end
end
