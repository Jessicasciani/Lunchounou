class AddSenderAndReceiverToMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :user_id
    add_reference :messages, :sender, index: true
    add_reference :messages, :receiver, index: true
  end
end
