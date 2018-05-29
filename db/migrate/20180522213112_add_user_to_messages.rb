class AddUserToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :user, index: true
  end
end
