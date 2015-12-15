Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' , registrations: 'users/registrations'}
  devise_scope :user do
    get 'profile', to: 'users/registrations#profile', as: 'profile'
    get 'users/:id/show', to: 'users/registrations#show', as: 'show'
    post 'vote', to: 'users/registrations#vote', as: 'vote'
  end
  root 'pages#index'

  get "/products/watches", to: "products#index_watches"
  get "/products/bags", to: "products#index_bags"
  get "/products/jewelry", to: "products#index_jewelry"
  resources :products , except: :index
  get "/home", to: "pages#index"

  resources :orders, only: [:new, :create, :index, :destroy]
  resources :products
end
