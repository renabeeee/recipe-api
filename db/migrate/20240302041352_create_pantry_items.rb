class CreatePantryItems < ActiveRecord::Migration[7.1]
  def change
    create_table :pantry_items do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
