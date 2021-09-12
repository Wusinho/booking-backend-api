# == Schema Information
#
# Table name: appointments
#
#  id         :bigint           not null, primary key
#  champion   :string
#  date       :date
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  coach_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_appointments_on_coach_id  (coach_id)
#  index_appointments_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (coach_id => coaches.id)
#  fk_rails_...  (user_id => users.id)
#
class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :role, :champion
  has_one :user
  has_one :coach
end
