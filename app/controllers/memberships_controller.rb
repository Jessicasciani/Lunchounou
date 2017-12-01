class MembershipsController < ApplicationController

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new
    @membership.group = Group.find(params[:group_id])
    @membership.user = current_user
    Invitation.find(params[:invitation]).destroy
    @membership.save
    redirect_to groups_path
  end

end
