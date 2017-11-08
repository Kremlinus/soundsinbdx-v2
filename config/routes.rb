Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'application#home'
  get '/contact', to: 'application#contact', as: :contact
  get '/metions-legales', to: 'application#mentionsLegales', as: :metions_legales

  get '/artistes/:slug', to: 'artists#show', as: :artist
  get '/artistes', to: 'artists#index', as: :artists

  get '/evenements', to: 'events#index', as: :events
  get '/evenements/archives', to: 'events#archives', as: :events_archives
  get '/evenements/:slug', to: 'events#show', as: :event
  post '/evenements', to: 'events#filters', as: :event_filter

  get '/a-propos/:slug', to: 'about_us#show', as: :about_u
  get '/a-propos', to: 'about_us#index', as: :about_us

end
