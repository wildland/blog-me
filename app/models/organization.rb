# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  include WildlandHerd::ActsAsOrganization
  has_many :roles
  has_many :permissions, through: :roles

  validates :name, uniqueness: true, presence: true
end
