class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    # Only venue creator can update it, and they can only review once
   def create?
    record.user == user && record.reviews.empty?
   end

    def update?
      record.user == user
    # - record: the venue passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
    end

  end

