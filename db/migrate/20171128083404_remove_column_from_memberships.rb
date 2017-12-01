class RemoveColumnFromMemberships < ActiveRecord::Migration[5.0]
  def change
    remove_column :memberships, :status
  end
end
