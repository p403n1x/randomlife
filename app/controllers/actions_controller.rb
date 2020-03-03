class ActionsController < ApplicationController

  def index
    @actions = Action.all
    @group = current_user.group_id
  end

  def create
    @options = Option.where(category_id: params[:category_id])
    @choice = @options.sample
    @action = Action.new(group: current_user.group, option: @choice)
    if @action.save
    @action.option.update(selected: true)
    redirect_to action_path(@action, @choiceindex)
    else
      redirect_to category_options_path(@category)
    end
  end

  def show
    @action = Action.find(params[:id])
    @options = Option.where(category_id: @action.option.category.id)
    @choiceindex = @options.find_index { |w| w == @action.option }
    @cellscount = @options.count
  end
end
