class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastname
      t.text :address
      t.string :telephone
      t.string :document
      t.string :speciality
      t.string :status
      t.timestamps
    end
  end
end
