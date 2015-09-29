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

class RoleSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :created_at, :updated_at

  has_many :permissions
  has_one :organization
end
