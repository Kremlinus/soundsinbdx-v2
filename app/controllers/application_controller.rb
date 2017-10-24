class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # GET /
  def home
     @events = Event.all
  end

  # GET /archive
  def archives
  end

  # GET /contact
  def contact
  end

end
