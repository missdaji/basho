class PinPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      #scope.all
      scope.where(user: user)
    end
  end

  def index?
    record.user == user
  end

  def show?
    record.user == user
  end
end
