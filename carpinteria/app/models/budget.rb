class Budget < ApplicationRecord
  belongs_to :furniture
  belongs_to :budget_for_order
end
