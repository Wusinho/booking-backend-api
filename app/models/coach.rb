class Coach < ApplicationRecord
  has_many :appointments
  validates :country, presence: true
  validates :name, presence: true
end
