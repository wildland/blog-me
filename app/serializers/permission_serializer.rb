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

class PermissionSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :permissible_type, :permissible_id,
             :can_create, :can_read, :can_update, :can_destroy, :created_at, :updated_at

  has_one :role
end
