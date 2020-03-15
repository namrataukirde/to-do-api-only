# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      @user_project_ids = user.projects.pluck(:id)

      can :manage, :all, if user.admin?

      can [:create, :show, :destroy, :index, :update], ToDo, created_by_id: @user_id

      can [:show], Project, id: @user_project_ids
    end
  end
end
