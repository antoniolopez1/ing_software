class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.references :utilities_type, foreign_key: true
      t.integer :quantity
      t.float :width
      t.float :high
      t.float :thickness
      t.float :cost
      t.text :observation

      t.timestamps
    end
  end
end
