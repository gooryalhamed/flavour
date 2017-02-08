class RemoveRecipeIdFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :recipe_id, :string
  end
end
