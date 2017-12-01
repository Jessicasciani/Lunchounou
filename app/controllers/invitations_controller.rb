class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new
    @invitation.group = Group.find(params[:group_id])
    @invitation.user = User.find(params[:invitation][:user_id])
    @invitation.status = "PENDING"
    @invitation.save
    redirect_to groups_path
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.group = Group.find(params[:group_id])
    @invitation.destroy
    redirect_to group_path(@invitation.group)
  end

end
