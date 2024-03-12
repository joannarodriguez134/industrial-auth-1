class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

    def show?
      true
    end

    def feed?
      true
    end

    def discover?
      visible?
    end

    def visible?
      (user == user) || (!user
      !user.private? ) ||
      (user.followers.include?(user))
    end 
  
end
