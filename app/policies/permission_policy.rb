class PermissionPolicy < ApplicationPolicy
  def permitted_attributes
    [:name, :permissible_type, :permissible_id, :can_create, :can_read, :can_update, :can_destroy, :roles_id]
  end
end
