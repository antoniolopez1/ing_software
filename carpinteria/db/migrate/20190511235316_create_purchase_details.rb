class CreatePurchaseDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_details do |t|
      t.references :purchase, foreign_key: true
      t.integer :quantity
      t.float :subtotal
      t.references :material, foreign_key: true
      t.float :net_price
      t.float :iva

      t.timestamps
    end
  end
end
