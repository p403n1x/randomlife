class AssignedTasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end
end
