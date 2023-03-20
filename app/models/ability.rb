class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    return unless user.present?

      can :manage, all
    end
  end
end
