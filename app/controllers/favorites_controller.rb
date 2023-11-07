require "pry"

class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    # binding.pry
    @favorite = Favorite.create!(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      title: params[:title],
      poster_path: params[:poster_path],
      overview: params[:overview],
      release_date: params[:release_date],
    )
    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: { errors: @favorite.errors.full_messages }
    end
  end

  def delete
    @favorite = current_user.favorites.find_by(id: params[:id])
    if @favorite
      @favorite.destroy
      render json: { message: "Favorite removed" }
    else
      render json: { message: "Favorite not found" }, status: :not_found
    end
  end

  def index
    # binding.pry
    @user_favorites = Favorite.where(user_id: current_user.id)
    @user_favorites.order!(:title)
    puts @user_favorites.to_sql
    render json: @user_favorites
  end
end
