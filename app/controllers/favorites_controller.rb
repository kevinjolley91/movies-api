class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    @favorite = Favorite.find_or_create_by(user_id: current_user, movie_id: params[:id])
    if @favorite.save
      render json: @favorite
    else
      render json: { error: @favorite.errors.full_messages }, status: :bad_request
    end    
  end
end
