class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    @membership = Membership.create(user_id: current_user.id, group_id: @group.id)
    redirect_to group_path(@group)
  end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups_joined = current_user.groups_joined
    @groups_admin = current_user.groups_created
  end

private

def group_params
  params.require(:group).permit(:name, :description, :photo)
end

end
