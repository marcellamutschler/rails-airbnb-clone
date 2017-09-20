class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("owner_id = ? or booker_id = ?", user, user)
    end
  end

  def create?
    true
  end
end
