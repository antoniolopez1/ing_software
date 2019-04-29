class CreateFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :furnitures do |t|
      t.string :description
      t.float :cost
      t.float :profit

      t.timestamps
    end
  end
end
