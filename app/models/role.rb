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

class Role < ActiveRecord::Base
  include WildlandHerd::ActsAsRole
  belongs_to :organization
  has_many :permissions

  validates :name, presence: true
end
