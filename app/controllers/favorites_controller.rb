require "pry"

class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    # binding.pry
    @favorite = Favorite.create!(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      movie_title: params[:movie_title],
      movie_poster_path: params[:movie_poster_path],
      # movie_overview: params[:movie_overview],
      # movie_release_data: params[:movie_release_date],
    )
    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: { errors: @favorite.errors.full_messages }
    end
  end

  def delete
    @favorite = current_user.favorites.find_by(movie_id: params[:movie_id])
    if @favorite
      @favorite.destroy
      render json: { message: "Favorite removed" }
    else
      render json: { message: "Favorite not found" }, status: :not_found
    end
  end

  def index
    @user_favorites = current_user.favorites.order("movie_title.name ASC")
    puts @user_favorites.to_sql
    render json: @user_favorites, include: "movie"
  end
end
