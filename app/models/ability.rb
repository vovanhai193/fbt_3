class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, Tour
      can [:create, :update, :read], User
      can :manage, Review
    end
  end
end
