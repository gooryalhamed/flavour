class AddAmountIdToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :amount_id, :integer
  end
end
