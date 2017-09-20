class BookingPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.where(user: user)
    end

    def create?
      return true
    end

    def accept?
      user == booking.owner
    end

    def update?
      return false
    # - record: the venue passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    end

    private

    def destroy?
      false
    end

  end
end
