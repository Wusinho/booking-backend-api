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
class Coach < ApplicationRecord
  has_many :appointments
  validates :country, presence: true
  validates :name, presence: true
end
