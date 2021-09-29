Rails.application.routes.draw do
  resources :appointments, only: %i[create index show]
  resources :coaches, only: %i[create index show]
  resources :users, only: %i[create index show]

  post '/login', to: 'users#login'


end
