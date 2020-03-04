class ArtistsController < ApplicationController
  before_action :set_billboard
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = @billboard.artists
  end

  def show
    @artist = @billboard.artists.find(params[:id])
  end

  def new
    @artist = @billboard.artists.new
  end

  def create
    @artist = @billboard.artists.new(artist_params)
    if @artist.save
      redirect_to [@billboard, @artist]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@billboard, @artist]
    else
      render :edit
    end
  end

  def destory
    @artist.destory
    redirect_to billboard_artists_path
  end

private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end

end

