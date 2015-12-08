Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'pages#index'
  get "/products/watches", to: "products#index_watches"
  get "/products/bags", to: "products#index_bags"
  get "/products/jewelry", to: "products#index_jewelry"
  resources :products , except: :index
  get "/home", to: "pages#index"

  resources :orders, only: [:new, :create, :index, :destroy]

end
