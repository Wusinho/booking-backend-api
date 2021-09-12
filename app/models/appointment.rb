# == Schema Information
#
# Table name: appointments
#
#  id         :bigint           not null, primary key
#  date       :date
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
  validates_uniqueness_of :date, scope: :user_id

  scope :upcoming, -> { where('date >= ?', DateTime.now) }

  def after_one_month?
    return unless date > DateTime.now + 1.months

    errors.add(:error, "Sorry. The appointment can't be set more than 1 month in the future.")
  end

  def before_time?
    return unless date < DateTime.now

    errors.add(:error, "Sorry. Can't go back in time")
  end

end
