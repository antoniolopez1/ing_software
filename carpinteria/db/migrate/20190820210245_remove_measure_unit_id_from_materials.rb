class RemoveMeasureUnitIdFromMaterials < ActiveRecord::Migration[5.2]
  def change
    remove_reference :materials, :measure_unit, foreign_key: true
  end
end
