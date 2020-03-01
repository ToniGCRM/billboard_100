class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      index
    else
      render :edit
    end
  end

  def destory
    @artist = Artist.find(params[:id])
    @artist.destory
    index
  end

private
  def artist_params
  params.require(:artist).permit(:name, :billboard_id)
  end
end

