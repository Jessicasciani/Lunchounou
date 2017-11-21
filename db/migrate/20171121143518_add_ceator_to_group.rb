class AddCeatorToGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :groups, :creator, foreign_key: { to_table: :users }, index: true
  end
end
