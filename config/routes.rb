Rails.application.routes.draw do

  resource :cart, only: [:show]



  get '/signup' => 'accounts#new'
  post '/accounts' => 'accounts#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :order_items do
    resources :products
  end

  resources :order_items do
    resources :orders
  end
end
