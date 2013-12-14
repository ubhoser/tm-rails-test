class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new

    if user.admin?
      can :manage, :all
    else
      can :manage, Campaign
      can :read, Platform
      can :read, ActiveAdmin::Page, :name => "Dashboard"
    end
  end
end
