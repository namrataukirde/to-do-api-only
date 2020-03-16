FactoryBot.define do
  factory :user do
    first_name { "Joe" }
    last_name  { "Blow" }

    trait :admin do
      after(:create) do |user|
        user.roles << create(:role, :admin)
      end
    end
  end
end
