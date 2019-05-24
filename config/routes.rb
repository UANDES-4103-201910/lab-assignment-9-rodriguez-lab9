Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users
  
  root :to => 'sessions#new'

  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'
  get '/buy' => 'events#buy'
  #delete 'events/:id' => 'events#destroy'
  get '/user_tickets/create' => 'user_tickets#create'
  post '/login',   to: 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out

  get '/sign_in' => 'registrations#new', as: :registrations
  post '/sign_in' => 'registrations#create', as: :sign_in

end
