class AddMoviePosterPathToFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :movie_poster_path, :string
  end
end
