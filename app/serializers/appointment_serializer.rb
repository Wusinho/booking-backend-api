class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :role, :champion
  has_one :user
  has_one :coach
end
