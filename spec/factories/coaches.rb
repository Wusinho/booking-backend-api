# == Schema Information
#
# Table name: coaches
#
#  id         :bigint           not null, primary key
#  country    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :coach do
    name { Faker::Name.name }
    country { 'Peru' }
  end
end
