class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # GET /
  def home
     @events = Event.where("DATE(date) >= ?", Date.today)
     @best = @events.where(best: true).sample
  end

  # GET /contact
  def contact
  end

end
