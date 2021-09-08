Rails.application.routes.draw do
  resources :appointments, only: %i[create index] 
  resources :coaches, only: %i[create index] 
  resources :users, only: %i[create index] 

  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
