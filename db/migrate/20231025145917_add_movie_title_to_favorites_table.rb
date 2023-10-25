class AddMovieTitleToFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :movie_title, :string
  end
end
