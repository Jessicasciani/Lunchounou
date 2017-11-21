class RemoveDescriptionFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :desription
  end
end
