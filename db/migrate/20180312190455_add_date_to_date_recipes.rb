class AddDateToDateRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :date_recipes, :date, :date
  end
end
