class ActionsController < ApplicationController

  def index
    @actions = Action.all
    @group = current_user.group_id
    @users = User.where(group_id: current_user.group_id)
    @cellscount = @users.count
  end

  def create
    @options = Option.where({category_id: params[:category_id], selected: nil})
    @choice = @options.sample
    @action = Action.new(group: current_user.group, option: @choice)
    if @action.save
    # @action.option.update(selected: true)
    redirect_to action_path(@action, @choiceindex)
    else
      redirect_to category_options_path(@category)
    end
  end

  def show
    @action = Action.find(params[:id])
    @options = Option.where({category_id: @action.option.category.id, selected: nil})
    @choiceindex = @options.find_index { |w| w == @action.option }
    @cellscount = @options.count
    @action.option.update(selected: true)
  end

  def destroy
    @action = Action.find(params[:id])
    @action.destroy
    redirect_to actions_path
  end

end
