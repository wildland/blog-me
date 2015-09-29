class RolePolicy < ApplicationPolicy
  def permitted_attributes
    [:name]
  end
end
