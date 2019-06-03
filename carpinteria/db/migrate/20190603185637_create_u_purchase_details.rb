class CreateUPurchaseDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :u_purchase_details do |t|
      t.references :purchase, foreign_key: true
      t.references :utilities_type, foreign_key: true
      t.integer :quantity
      t.float :width
      t.float :high
      t.float :thickness
      t.float :cost
      t.float :subtotal
      t.text :observation

      t.timestamps
    end
  end
end
