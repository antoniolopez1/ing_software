class BudgetForOrder < ApplicationRecord
  has_many :budget
  has_one :order
  belongs_to :customer
end
