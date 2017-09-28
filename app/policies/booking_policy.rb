class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    return true
  end

  def accept?
    is_owner?
  end

  def decline?
    is_owner?
  end

  def owner?
    true
  end

  def edit?
    update?
  end

  def update?
    user = record.user
  # - record: the venue passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  end

  private

  def destroy?
    false
  end

  def is_owner?
    user == record.owner
  end
end
