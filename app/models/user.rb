class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :projects, through: :users_projects
end

