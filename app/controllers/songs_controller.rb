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
    @song = Song.new(artist_params)
    if @song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      index
    else
      render :edit
    end
  end

  def destory
    @song = Song.find(params[:id])
    @song.destory
    index
  end

private
  def song_params
  params.require(:song).permit(:name, :genre, :rank, :artist_id)
  end
end


