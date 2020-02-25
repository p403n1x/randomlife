class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to categories_index_path
    else
      render :new
    end
  end

  private
   def category_params
    params.require(:category).permit(:title, :kind)
  end
end
