class AddMovieReleaseDateToFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :movie_release_date, :string
  end
end
