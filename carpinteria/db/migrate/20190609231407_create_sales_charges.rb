class CreateSalesCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_charges do |t|
      t.references :sale, foreign_key: true
      t.references :customer, foreign_key: true
      t.float :amount
      t.float :balance

      t.timestamps
    end
  end
end
