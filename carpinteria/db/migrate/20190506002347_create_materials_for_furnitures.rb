class CreateMaterialsForFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :materials_for_furnitures do |t|
      t.integer :materials_id
      t.integer :furniture_id
      t.integer :quantity
      t.float :cost

      t.timestamps
    end
  end
end
