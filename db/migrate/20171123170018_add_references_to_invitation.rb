class AddReferencesToInvitation < ActiveRecord::Migration[5.0]
  def change
    add_reference :invitations, :group, foreign_key: true
    add_reference :invitations, :user, foreign_key: true
  end
end
