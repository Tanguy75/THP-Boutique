Rails.application.routes.draw do


  get 'profile_pictures/create'
	resources :users
  devise_for :users
  root 'items#index'

	resources :charges, only: [:new, :create]

	resources :users, :path => "egodefou"

	resources :items, :path => "petitminou"
	resources :join_cart_items
	#resources :sessions, only: [:new, :create, :destroy]
	resources :carts

  resources :users, only: [:show] do # pour le active storage
    resources :profile_picture, only: [:create]
  end


	resources :carts, :path => "donnenoustonargent"
	resources :orders, :path => "mercidenousengraisser"

	#get 'bienvenue', to: 'items#index'
	#get 'petitminou', to: 'items#show'
end
