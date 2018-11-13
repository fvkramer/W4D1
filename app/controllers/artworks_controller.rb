class ArtworksController < ApplicationController
  def index
    users = Artwork.all

    render json: users
  end

  def create
    user = Artwork.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def show
    user = Artwork.find(params[:id])

    if user
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def update
    user = Artwork.find(params[:id])
    if user.update_attributes(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
    # user = Artwork.find(params[:id])
    # user.update(user_params)
    # render json: user
  end

  def destroy
    user = Artwork.find_by(id: params[:id])

    if user
      user.destroy
      render json: user
    else
      render json: nil, status: 418
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
