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
class CoachSerializer < ActiveModel::Serializer
  attributes :id, :name, :country
end
