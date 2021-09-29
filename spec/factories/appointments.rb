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
FactoryBot.define do
  factory :appointment do
    date { DateTime.tomorrow }
    coach
    user
  end
end
