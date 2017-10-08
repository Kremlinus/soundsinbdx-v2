class AboutUsController < ApplicationController
  before_action :set_about_u, only: [:show]

  # GET /about_us
  # GET /about_us.json
  def index
    @about_us = AboutU.all
  end

  # GET /about_us/slug
  # GET /about_us/slug.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_u
      @about_u = AboutU.where(:slug => params[:slug]).first
    end

end
