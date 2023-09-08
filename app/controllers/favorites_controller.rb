class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    @favorite = Favorite.new(
      # user_id = params[id: current_user.id],
      movie_id = params[:id],
    )
    if @favorite.save
      render json: @favorite
    else
      render json: { errors: @favorite.errors.full_messages }, status: :bad_request
    end
  end
end
