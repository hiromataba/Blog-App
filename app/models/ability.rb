class Ability
  include CanCan::Ability
  def initialize(user)
    return unless user.present?

    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can %i[update destroy], Post, user: user
      can %i[update destroy], Comment, user: user
      can :read, :all
    end
  end
end
