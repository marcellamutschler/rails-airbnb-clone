class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
