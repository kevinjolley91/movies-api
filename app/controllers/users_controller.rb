class UsersController < ApplicationController
  before_action :authenticate_user, except: [:show, :create]

  def show
    @user = User.find_by(id: params["id"])
    render json: @user
  end

  def create 
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image_url: params[:image_url],
    )
    if @user.save
      render json: { message: "User successfully created!" }, status: :created
    else
      render json: { errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      image_url: params[:image_url] || @user.image_url,
    )
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end 
end