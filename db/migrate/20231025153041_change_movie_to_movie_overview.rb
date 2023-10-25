class ChangeMovieToMovieOverview < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :movie_, :movie_overview
  end
end
