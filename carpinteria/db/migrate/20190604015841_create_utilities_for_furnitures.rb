class CreateUtilitiesForFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities_for_furnitures do |t|
      t.float :width
      t.float :high
      t.float :thickness
      t.float :cost
      t.float :subtotal
      t.integer :quantity
      t.references :utility, foreign_key: true
      t.references :furniture, foreign_key: true

      t.timestamps
    end
  end
end
