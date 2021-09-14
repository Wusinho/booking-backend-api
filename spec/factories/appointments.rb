FactoryBot.define do
  factory :appointment do
    date { DateTime.tomorrow }
    coach
    user
  end
end