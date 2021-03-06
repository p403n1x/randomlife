require "open-uri"

class CategoriesController < ApplicationController
  #skip_before_action :authenticate_user!

  def index
    @categories = current_user.group.categories
    @category = Category.new
    @tasks = Task.all
    @last_task = Task.where(user_id: current_user).order("created_at").last
  end


  def create
    @categories = current_user.group.categories
    @category = Category.new(category_params)
    #@category.image.attach(io: URI.open(params[:category][:photo]), filename: "photo.jpg", content_type: "image/jpg")
    @group = current_user.group

    if @category.save
      Groupcategory.create(group: @group, category: @category)
      redirect_to categories_path
    else
      render :index
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
   def category_params
    params.require(:category).permit(:title, :kind, :photo)
  end
end
