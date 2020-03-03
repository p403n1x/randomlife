class ActionsController < ApplicationController

  def index
    @actions = Action.all
    @group = current_user.group_id
    @users = User.where(group_id: current_user.group_id)
    @cellscount = @users.count
  end

  def create
  end

  def show
  end
end
