class ToDo < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  belongs_to :project
  belongs_to :assigned_by, class_name: 'User'

  validates :description, presence: true
end
