class RemoveNameFromChatRoom < ActiveRecord::Migration[5.0]
  def change
    remove_column :chat_rooms, :name
  end
end
