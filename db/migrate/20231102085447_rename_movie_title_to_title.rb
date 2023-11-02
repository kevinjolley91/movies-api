class RenameMovieTitleToTitle < ActiveRecord::Migration[7.0]
  def change
    rename_column :favorites, :movie_title, :title
  end
end
