class ChangeColumnFromRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :desription, :description, :string
  end
end
