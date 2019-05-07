class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.integer :materials_types_id
      t.integer :measure_units_id
      t.string :description
      t.integer :queantity
      t.float :cost

      t.timestamps
    end
  end
end
