FactoryBot.define do
  factory :coach do
    name { Faker::Name.name }
    country 'Peru'
  end
end
