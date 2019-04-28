class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.references :employee, foreign_key: true
      t.float :accumulated
      t.float :charge_for_hours
      t.float :total_hours
      t.float :total_extra_hours

      t.timestamps
    end
  end
end
