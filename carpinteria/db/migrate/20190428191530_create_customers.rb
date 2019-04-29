class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastname
      t.text :address
      t.string :telephone
      t.string :email
      t.string :document
      t.integer :ruc
      t.text :observation

      t.timestamps
    end
  end
end
