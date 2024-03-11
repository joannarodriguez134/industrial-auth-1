class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

    def index?
      true
    end
  
    def show?
      true
    end
  
    def create?
      true
    end
  
  
    def update?
      author?
    end
  
  
    def destroy?
      author?
    end

    private
    def author?
      record.author == user
    end
  
  
end
