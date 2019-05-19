class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.text :observation
      t.integer :quantity
      t.float :unit_price
      t.float :subtotal
      t.references :furniture, foreign_key: true

      t.timestamps
    end
  end
end
