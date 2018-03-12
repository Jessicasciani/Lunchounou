class CreateDateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :date_recipes do |t|

      t.timestamps
    end
  end
end
