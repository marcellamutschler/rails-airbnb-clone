class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
    # record.user == user
     # Anyone can view a profile
     # current user = profile.uqer
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  # - record: the venue passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  end

  def edit?
    update?
  end


  def destroy?
    record.user == user
  end

  def myvenues?
    record.user == user
  end
end

