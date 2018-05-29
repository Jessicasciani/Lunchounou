class ChatRoomsController < ApplicationController

before_action :authenticate_user!

  def index
   @users = User.all
   @chat_rooms = ChatRoom.all
  end


def create

 if ChatRoom.between(params[:chat_room][:sender_id],params[:chat_room][:receiver_id]).present?
    @chat_room = ChatRoom.between(params[:chat_room][:sender_id],
     params[:chat_room][:receiver_id]).first
 else
  @chat_room = ChatRoom.new(chat_room_params)
  @chat_room.sender_id = params[:chat_room][:sender_id]
  @chat_room.receiver_id = params[:chat_room][:receiver_id]
  @chat_room.save
 end

 redirect_to chat_room_messages_path(@chat_room)

end

private

 def chat_room_params
  params.permit(:sender_id, :receiver_id)
 end


end


