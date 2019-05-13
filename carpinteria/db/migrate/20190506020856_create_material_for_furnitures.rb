class CreateMaterialForFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :material_for_furnitures do |t|
      t.integer :quantity
      t.float :cost
      t.references :material, foreign_key: true
      t.references :furniture, foreign_key: true

      t.timestamps
    end
  end
end
