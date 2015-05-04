class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :part
      t.string :recipe_purpose
      t.string :ingredients
      t.string :prep_time
      t.string :total_time
      t.string :directions

      t.timestamps
    end
  end
end
