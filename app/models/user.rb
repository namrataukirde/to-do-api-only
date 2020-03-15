class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :projects, through: :users_projects

  validates :first_name, :last_name, presence: true
end

