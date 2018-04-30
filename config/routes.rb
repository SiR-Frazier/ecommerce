Rails.application.routes.draw do
  get '/signup' => 'accounts#new'
  post '/accounts' => 'accounts#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resource :cart, only: [:show]
end
