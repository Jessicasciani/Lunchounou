class AddGroupRecipeToDateRecipe < ActiveRecord::Migration[5.0]
  def change
    add_reference :date_recipes, :group_recipe, index: true
  end
end
