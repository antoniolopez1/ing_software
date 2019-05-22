class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.date :begin_date
      t.date :end_date
      t.text :observation
      t.references :budget_for_order, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
