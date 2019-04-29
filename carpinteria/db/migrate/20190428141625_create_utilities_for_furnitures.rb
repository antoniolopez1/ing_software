class CreateUtilitiesForFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities_for_furnitures do |t|
      t.integer :utilities_id
      t.integer :furniture_id
      t.float :width
      t.float :high
      t.float :thickness
      t.float :cost

      t.timestamps
    end
  end
end
