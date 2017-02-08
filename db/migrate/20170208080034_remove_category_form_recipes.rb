class RemoveCategoryFormRecipes < ActiveRecord::Migration[5.0]
  def change
  	 remove_column :recipes, :category, :string
  end
end
