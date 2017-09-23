module Drift
  module Policies

    # User policies.
    class UserPolicy < BasePolicy
      def index?
        false
      end

      def show?
        user == object
      end

      def edit?
        show?
      end

      def update?
        show?
      end

      def destroy?
        show?
      end

      class Scope
        attr_reader :user, :scope

        def initialize(user, scope)
          @user  = user
          @scope = scope
        end

        def resolve
          scope.where(id: user.id)
        end
      end
    end
  end
end