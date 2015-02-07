class Group < ActiveRecord::Base
	acts_as_paranoid
	self.per_page = 5
	has_many :group_users, dependent: :destroy
	has_many :users, through: :group_users
end
