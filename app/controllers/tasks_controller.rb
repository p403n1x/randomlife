class TasksController < ApplicationController
  before_action :set_category, only: [:new, :create]
  before_action :set_category, only: [:show, :edit, :update]

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.category = @category
    @task.user_id = current_user.id

    if @task.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task = Task.update(task_params)

    if @task.update
      redirect_to categories_path
    else
      render :edit
    end
  end


  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

   def task_params
    params.require(:task).permit(:name, :progress, :start_date)
  end

end
