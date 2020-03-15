class Project < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  has_many :developers, class_name: 'User', through: :users_projects
  has_many :to_dos
end
