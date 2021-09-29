class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :coach

  validates :coach_id, presence: true
  validates :user_id, presence: true

  validate :after_one_month?
  validate :before_time?

  scope :upcoming, -> { where('date >= ?', DateTime.now) }

  def self.current_user_appointments(id)
    where(user_id: id).where('date >= ?', DateTime.now).includes(:coach)
  end

  def after_one_month?
    return unless !date.nil? && date > DateTime.now + 1.months
  end

  def before_time?
    return unless !date.nil? && date < DateTime.now
  end
end
