Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get '/archives', to: 'application#archives', as: :archives
  get '/contact', to: 'application#contact', as: :contact

  get '/artistes/:slug', to: 'artists#show', as: :artist
  get '/artistes', to: 'artists#index', as: :artists
  get '/evenements/:slug', to: 'events#show', as: :event
  get '/evenements', to: 'events#index', as: :events
  get '/a-propos/:slug', to: 'about_us#show', as: :about_u
  get '/a-propos', to: 'about_us#index', as: :about_us

  resources :socials
  resources :events
  resources :about_us
  root to: 'application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
