Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'application#home'
  get '/archives', to: 'application#archives', as: :archives
  get '/contact', to: 'application#contact', as: :contact

  get '/artistes/:slug', to: 'artists#show', as: :artist
  get '/artistes', to: 'artists#index', as: :artists
  get '/evenements/:slug', to: 'events#show', as: :event
  get '/evenements', to: 'events#index', as: :events
  get '/a-propos/:slug', to: 'about_us#show', as: :about_u
  get '/a-propos', to: 'about_us#index', as: :about_us

end
