class UsersController < ApplicationController
  #skip_before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update]

  def show
    @tasks = current_user.tasks
    @user = current_user
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @group = Group.find(params[:group_id])
    @user.group = @group
    @user.password = Devise.friendly_token
    @user.save!
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :nickname, :email, :phone_number, :photo)
  end
end

