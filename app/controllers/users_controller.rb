class UsersController < ApplicationController
  #skip_before_action :authenticate_user!
  def show
    @tasks = current_user.tasks
    #@user.id = current_user

    @user = current_user
  end
end

