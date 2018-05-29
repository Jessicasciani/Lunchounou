class AddReferenceToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :chat_room, index: true
  end
end
