# == Schema Information
#
# Table name: roles
#
#  id              :integer          not null, primary key
#  name            :string           default(""), not null
#  organization_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :role do
    sequence(:name) { |n| "Role #{n}" }
    organization
  end
end
