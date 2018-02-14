FactoryBot.define do
  factory :user do
    name "MyString"
    nickname "MyString"
    age 1

    trait :active do
      entity_status 'ACTIVE'
    end
  end
end
