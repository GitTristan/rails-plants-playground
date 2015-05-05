class AddPurposeIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :plant_id, :integer
  end
end
