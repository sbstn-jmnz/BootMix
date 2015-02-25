class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
	acts_as_paranoid

	has_many :group_users, dependent: :destroy
	has_many :groups, through: :group_users
	
	has_many :posts
	has_many :comments
end
