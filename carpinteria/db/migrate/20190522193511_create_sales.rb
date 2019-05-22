class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.float :total
      t.float :amount
      t.float :balance
      t.string :status
      t.references :order, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
