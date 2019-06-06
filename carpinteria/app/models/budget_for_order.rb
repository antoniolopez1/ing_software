class BudgetForOrder < ApplicationRecord
  has_many :budget
  belongs_to :customer
end
