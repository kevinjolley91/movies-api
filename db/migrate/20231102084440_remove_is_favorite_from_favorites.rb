class RemoveIsFavoriteFromFavorites < ActiveRecord::Migration[7.0]
  def change
    remove_column :favorites, :Is_favorite, :boolean
  end
end
