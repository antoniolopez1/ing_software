class Order < ApplicationRecord
  belongs_to :budget_for_order
  belongs_to :customer
end
