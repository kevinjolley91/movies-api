class MoviesController < ApplicationController
  before_action :authenticate_user
  # , only: :toggle_favorite
  def index
    @movies = Movie.order(name: :asc)
    render json: @movies
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render json: @movie
  end

  def create
    @movie = Movie.new(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    if @movie.save
      render json: @movie
    else
      render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
