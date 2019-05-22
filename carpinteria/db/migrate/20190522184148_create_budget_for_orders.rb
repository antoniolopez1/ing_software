class CreateBudgetForOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_for_orders do |t|
      t.float :total
      t.text :observation
      t.references :budget, foreign_key: true

      t.timestamps
    end
  end
end
