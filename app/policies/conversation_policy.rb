class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("owner_id = ? or booker_id = ?", user, user)
    end
  end

  def create?
    true
  end

  def show?
    record.owner == user || record.booker == user
  end
end
