require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:coach) }
  end
  describe 'Validations' do
    it { should validate_presence_of(:coach_id) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:user_id) }
    it { should allow_value(DateTime.tomorrow).for(:date) }
  end
end
