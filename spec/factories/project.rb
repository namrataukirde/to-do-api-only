FactoryBot.define do
  factory :project do
    name { 'Project' }
    association :created_by, factory: :user
  end
end
