class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    @favorite = current_user.favorites.build(movie_id: params[:movie_id])
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
      render json: { message: "Favorite removed"}
    else 
      render json: { message: "Favorite not found" }, status: :not_found
    end
  end

  def index
    @favorites = current_user.favorites.all
    render json: @favorites
  end
end
