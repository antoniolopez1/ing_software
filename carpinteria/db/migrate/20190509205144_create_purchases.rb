class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.date :purchase_date
      t.float :total
      t.float :amount
      t.float :balance
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
