class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  # GET /artists
  # GET /artists.json
  def index
     @artists = Artist.all
  end

  # GET /artists/slug
  # GET /artists/slug.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.where(:slug => params[:slug]).first
    end

end
