class AddReceiverToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :receiver, index: true
  end
end
