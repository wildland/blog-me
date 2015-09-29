class OrganizationPolicy < ApplicationPolicy
  def permitted_attributes
    [:name]
  end
end
