class SocialsController < ApplicationController
  before_action :set_social, only: [:show]

  # GET /socials
  # GET /socials.json
  def index
    @socials = Social.all
  end

  # GET /socials/1
  # GET /socials/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social
      @social = Social.find(params[:id])
    end

end
