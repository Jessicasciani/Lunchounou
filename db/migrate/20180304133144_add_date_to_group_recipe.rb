class AddDateToGroupRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :group_recipes, :date, :string
  end
end
