class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    # de base, user = cuurent user. quand on met 'user' c'est current user
    @record = record
    # l'objet ruby de qui on veut checker les autorisations (ex: booking, venue)
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
