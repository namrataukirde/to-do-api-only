FactoryBot.define do
  factory :role do
    name { 'developer' }

    trait :admin do
      name { 'admin' }
    end
  end
end
