class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.leader
      can :manage Publication
    else
      can :read Publication
  end
end
