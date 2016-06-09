class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.song_url = params[:song_url]
    @song.artist_img = params[:artist_img]
    @song.title = params[:title]
    @song.artist = params[:artist]

    if @song.save
      redirect_to "/songs", :notice => "Song created successfully."
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.song_url = params[:song_url]
    @song.artist_img = params[:artist_img]
    @song.title = params[:title]
    @song.artist = params[:artist]

    if @song.save
      redirect_to "/songs", :notice => "Song updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to "/songs", :notice => "Song deleted."
  end
end
