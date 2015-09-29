# == Schema Information
#
# Table name: permissions
#
#  id               :integer          not null, primary key
#  name             :string           default(""), not null
#  role_id          :integer
#  permissible_type :string
#  permissible_id   :integer
#  can_create       :boolean          default(FALSE)
#  can_read         :boolean          default(FALSE)
#  can_update       :boolean          default(FALSE)
#  can_destroy      :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :permission do
    sequence(:name) { |n| "Permission #{n}" }
    role
  end
end
