class AddReferenceToGroups < ActiveRecord::Migration[5.0]
  def change
    add_reference :groups, :membership, foreign_key: true
  end
end
