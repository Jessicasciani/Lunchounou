class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.creator_id = current_user.id
    @membership = Membership.new
    @membership.user = current_user
    @membership.group = @group
    @membership.save
    @group.save
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
