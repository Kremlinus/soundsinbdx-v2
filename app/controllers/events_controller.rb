class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/slug
  # GET /events/slug.json
  def show
  end

  # POST /events/slug
  # POST /events/slug.json
  def filters
     @events = Event.all

     if params[:price] == '0'
        @events = Event.where(:price => 0)
     elsif params[:price] == '-10'
        @events = Event.where("PRICE < 10 AND PRICE != 0")
     elsif params[:price] == '+10'
        @events = Event.where("PRICE > 10")
     end

     render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.where(:slug => params[:slug]).first
    end

end
