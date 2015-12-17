module Spree
  class AbilityDecorator
    include CanCan::Ability
    def initialize(user)
      can :destroy, Review do |review|
        review.user == user
      end
    end
  end
  Spree::Ability.register_ability(AbilityDecorator)
end 

