class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      #El admin somos nosotros
      #No capturamos solamente vemos resultados
      can :view_all
    else
      can :fill_form
    end
  end
end
