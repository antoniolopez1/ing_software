class CreateUtilitiesTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
