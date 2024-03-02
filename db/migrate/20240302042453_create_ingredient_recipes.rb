class CreateIngredientRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredient_recipes do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.string :measurements

      t.timestamps
    end
  end
end
