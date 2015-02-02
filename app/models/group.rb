class Group < ActiveRecord::Base
	acts_as_paranoid
	has_many :group_users, dependent: :destroy
	has_many :users, through: :group_users
end
