FactoryBot.define do
  factory :to_do do
    description { 'check attendance' }
    association :created_by, factory: :user
    association :project, factory: :project
    association :assigned_by, factory: :user
    completed { false }
  end
end
