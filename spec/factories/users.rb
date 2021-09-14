FactoryBot.define do
  factory :user do
    sequence(:username) { Faker::Name.last_name }
    password { 'foobar' }
  end
end
