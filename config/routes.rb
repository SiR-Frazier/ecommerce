Rails.application.routes.draw do
  root :to => 'products#index'



  get '/signup' => 'accounts#new'
  post '/accounts' => 'accounts#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'


  resource :cart, only: [:show]

  resources :products do
    resources :order_items
  end

  resources :order_items do
    resources :orders
  end
end
