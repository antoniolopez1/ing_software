class AddCustomerToBudgetForOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :budget_for_orders, :customer, foreign_key: true
  end
end
