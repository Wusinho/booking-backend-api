class CoachSerializer < ActiveModel::Serializer
  attributes :id, :name, :country
  has_many :appointments
end
