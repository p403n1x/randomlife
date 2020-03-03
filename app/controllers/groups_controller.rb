class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create

   @group = Group.new(group_params)
   @group.token = params[:authenticity_token]

    if @group.save
      current_user.group_id = @group.id
      current_user.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @user = User.new
  end

  private

  def group_params
  params.require(:group).permit(:name, :address, :description)

  end
end
