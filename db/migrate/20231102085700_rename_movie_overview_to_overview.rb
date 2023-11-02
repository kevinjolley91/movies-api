class RenameMovieOverviewToOverview < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :movie_overview, :overview
  end
end
