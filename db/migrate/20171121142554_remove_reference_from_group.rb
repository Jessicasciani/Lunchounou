class RemoveReferenceFromGroup < ActiveRecord::Migration[5.0]
  def change
    remove_reference :groups, :membership, foreign_key: true, index: true
  end
end
