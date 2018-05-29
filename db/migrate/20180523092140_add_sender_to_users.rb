class AddSenderToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :sender, index: true
  end
end
