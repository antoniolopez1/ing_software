class Employee < ApplicationRecord
	has_one :hours_histories
	has_one :salaries
end
