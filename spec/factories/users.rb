FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    name 'Anonymous'
    email { generate :email }
    password '1111111a'
  end

  factory :admin do
    name 'Admin User'
    email { generate :email }
    password '1111111a'
  end
end