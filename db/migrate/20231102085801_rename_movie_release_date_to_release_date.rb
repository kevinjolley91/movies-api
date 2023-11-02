class RenameMovieReleaseDateToReleaseDate < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :movie_release_date, :release_date
  end
end
