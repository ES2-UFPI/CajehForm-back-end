class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.leader
      can :manage Publication
    elsif user.collab
      can [:create] Publication
    else
      can :read Publication
  end
end
