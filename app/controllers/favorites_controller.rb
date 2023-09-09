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
end
