class User < ApplicationRecord
  has_many :to_dos
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :projects, through: :users_projects

  validates :first_name, :last_name, presence: true

  def role_names
    roles.pluck(:name)
  end

  def admin?
    role_names.include?('admin')
  end

  def developer?
    role_names.include?('developer')
  end
end

