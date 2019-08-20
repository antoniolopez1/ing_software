class AddMeasureUnitToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :measure_unit, :string
  end
end
