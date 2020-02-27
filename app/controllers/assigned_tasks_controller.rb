class AssignedTasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def edit
  end

  def update
    @assigned_task = Task.find(params[:id])
    @assigned_task.update(task_params)
    redirect_to user_assigned_tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:progress)
  end
end
