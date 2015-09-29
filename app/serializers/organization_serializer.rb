# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrganizationSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :created_at, :updated_at

  has_many :permissions
  has_many :roles
end
