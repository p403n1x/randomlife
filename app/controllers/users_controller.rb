class UsersController < ApplicationController
  #skip_before_action :authenticate_user!
  def show
    @tasks = current_user.tasks
    @user = current_user
  end
end

