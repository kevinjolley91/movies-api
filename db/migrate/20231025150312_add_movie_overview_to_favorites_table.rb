class AddMovieOverviewToFavoritesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :movie_, :string
  end
end
