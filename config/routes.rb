Rails.application.routes.draw do
  resources :appointments, only: %i[create index show]
  resources :coaches, only: %i[create index show]
  resources :users, only: %i[create index show]

  post '/users/login', to: 'users#login'
end
