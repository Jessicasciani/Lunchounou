class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.creator = current_user
    @membership = Membership.new(user: current_user, group: @group )
    @membership.save
    @group.save
    redirect_to group_path(@group)
  end

  def show
    @group = Group.find(params[:id])
    @invitation = Invitation.new
    @date_recipe = DateRecipe.new
  end

  def index
    @groups_joined = current_user.groups_joined
    @groups_admin = current_user.groups_created
    @membership = Membership.new
  end

private

  def group_params
    params.require(:group).permit(:name, :description, :photo)
  end

end
