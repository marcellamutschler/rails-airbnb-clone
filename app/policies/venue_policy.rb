class VenuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    # everyone logging can create a venue.
    def create?
      return true
    end

    # Only venue creator can update it
    def update?
      record.user == user
    # - record: the venue passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    end

    # Only venue creator can delete it
    def destroy?
      record.user == user
    end

  end

