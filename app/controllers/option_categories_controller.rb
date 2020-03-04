class OptionCategoriesController < ApplicationController

  def index
    @categories = current_user.group.categories
    @category = Category.new
    # @last_action = Action.where(group_id: current_user.group).order("created_at").last
  end

  def create
  @category = Category.new(category_params)
  @group = current_user.group

    if @category.save
      Groupcategory.create(group: @group, category: @category)
      redirect_to option_categories_path
    else
      render :index
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to option_categories_path
  end

  private

  def category_params
  params.require(:category).permit(:title, :kind, :photo)
  end

end
