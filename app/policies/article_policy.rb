class ArticlePolicy < ApplicationPolicy
  def permitted_attributes
    [:title, :text, :user_id]
  end
end
