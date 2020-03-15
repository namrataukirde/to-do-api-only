class Project < ApplicationRecord
  has_many :developers, class_name: 'User', through: :users_projects
  has_many :to_dos
  belongs_to :created_by, class_name: 'User'
end
