class ChangeFavolitesToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_table :favolites, :favorites
  end
end
