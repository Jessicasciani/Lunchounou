class CreateGroupRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :group_recipes do |t|
      t.references :group, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
