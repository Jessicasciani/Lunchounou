class RemoveReferencesFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :sender_id
    remove_column :messages, :receiver_id
    add_reference :messages, :user, index: true
  end
end
