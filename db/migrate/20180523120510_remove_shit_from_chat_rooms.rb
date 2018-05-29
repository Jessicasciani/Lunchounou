class RemoveShitFromChatRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :chat_rooms, :sender_id_id
    remove_column :chat_rooms, :receiver_id_id
    add_reference :chat_rooms, :sender, index: true
    add_reference :chat_rooms, :receiver, index: true
  end
end
