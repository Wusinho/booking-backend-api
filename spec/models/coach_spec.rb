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
require 'rails_helper'

RSpec.describe Coach, type: :model do
  describe 'Associations' do
    it { should have_many(:appointments) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:name) }
  end
end
