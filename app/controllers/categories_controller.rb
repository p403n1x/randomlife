class CategoriesController < ApplicationController
  #skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @category = Category.new
  end



  def create
    @category = Category.new(category_params)
    @group = current_user.group

    if @category.save
      Groupcategory.create(group: @group, category: @category)
      redirect_to categories_path
    else
      render :index
    end
  end

  private
   def category_params
    params.require(:category).permit(:title, :kind)
  end
end
