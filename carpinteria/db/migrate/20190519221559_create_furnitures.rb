class CreateFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :furnitures do |t|
      t.text :description
      t.float :cost
      t.float :profit
      t.float :iva
      t.float :price

      t.timestamps
    end
  end
end
