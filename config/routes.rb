Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'products#index'
  resources :products


  get "/home", to: "pages#index"



  resources :orders, only: [:new, :create]

end
