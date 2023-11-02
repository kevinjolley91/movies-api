class ChangeMoviePosterPathToPosterPath < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :movie_poster_path, :poster_path
  end
end
