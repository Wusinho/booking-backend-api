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
class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :coach

  validates :coach_id, presence: true
  validates :user_id, presence: true
  validates :date, presence: true

  validate :after_one_month?
  validate :before_time?

  scope :upcoming, -> { where('date >= ?', DateTime.now) }

  def after_one_month?
    return unless !date.nil? && date > DateTime.now + 1.months
  end

  def before_time?
    return unless !date.nil? && date < DateTime.now
  end
end
