class MessagesController < ApplicationController

before_action do
   @chat_room = ChatRoom.find(params[:chat_room_id])
end

def index
 @messages = @chat_room.messages
    # if @messages.length > 10
    #   @over_ten = true
    #   @messages = @messages[-10..-1]
    # end
    # if params[:m]
    #  @over_ten = false
    #  @messages = @chat_room.messages
    # end
  @message = Message.new
end

def new
  @message = Message.new
end



  def create
    @message = Message.new(message_params)
    @chat_room  = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.user_id = current_user.id
    if @message.save
      redirect_to chat_room_messages_path(@chat_room)
    else
     raise
    end
    # if @message.save
    #   respond_to do |format|
    #     format.html { redirect_to chat_room_path(@chat_room)}
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render "chat_rooms/show" }
    #     format.js
    #   end
    # end


    #j'appuie sursend a message  et en gros je veux que ca crée une chat_room entre les deux user ou que ca l'affiche si deja créee
  end

private

def message_params
  params.require(:message).permit(:content, :user_id, :chat_room_id)
end

end
