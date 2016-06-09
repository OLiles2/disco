class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(:user_id => current_user.id)
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.favorite_tag = params[:favorite_tag]
    @favorite.song_id = params[:song_id]
    @favorite.user_id = params[:user_id]

    if @favorite.save
      redirect_to "/songs", :notice => "Added to playlist"
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.favorite_tag = params[:favorite_tag]
    @favorite.song_id = params[:song_id]
    @favorite.user_id = params[:user_id]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/songs", :notice => "Removed from playlist"
  end
end
