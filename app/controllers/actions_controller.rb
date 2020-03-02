class ActionsController < ApplicationController

  def index
    @actions = Action.all
    @group = current_user.group_id
  end

  def create
  end

  def show
  end
end
