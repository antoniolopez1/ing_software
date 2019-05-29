class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.text :address
      t.string :telephone
      t.string :email
      t.string :document
      t.integer :ruc

      t.timestamps
    end
  end
end
