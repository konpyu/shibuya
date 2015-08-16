Rails.application.routes.draw do
  root 'dashboard#index'
  resources :maps
  resources :tiles
  resources :serifs
  resources :mapobjects
  resources :dungeons
end
