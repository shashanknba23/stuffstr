class Role < ApplicationRecord
	has_one :user_role
	has_many :users, through: :user_role
end
