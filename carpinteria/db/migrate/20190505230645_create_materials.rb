class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :description
      t.integer :quantity
      t.float :cost
      t.references :materials_type, foreign_key: true
      t.references :measure_unit, foreign_key: true
      t.timestamps
    end
  end
end
