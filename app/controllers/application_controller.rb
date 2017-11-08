class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # GET /
  def home
     @events = Event.where("DATE(date) >= ?", Date.today)
  end

  # GET /contact
  def contact
  end

end
