Rails.application.routes.draw do
  root 'dashboard#index'
  resources :maps      , only: [:index, :update, :create, :destroy]
  resources :tiles     , only: [:index, :update, :create, :destroy]
  resources :serifs    , only: [:index, :update, :create, :destroy]
  resources :mapobjects, only: [:index, :update, :create, :destroy]
  resources :dungeons  , only: [:index, :update, :create, :destroy]
  resources :images    , only: [:index, :update, :create, :destroy]

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create'
end
