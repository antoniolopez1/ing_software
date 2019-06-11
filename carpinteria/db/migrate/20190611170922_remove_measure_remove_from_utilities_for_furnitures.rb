class RemoveMeasureRemoveFromUtilitiesForFurnitures < ActiveRecord::Migration[5.2]
  def change
    remove_column :utilities_for_furnitures, :width, :float
    remove_column :utilities_for_furnitures, :high, :float
    remove_column :utilities_for_furnitures, :thickness, :float
  end
end
