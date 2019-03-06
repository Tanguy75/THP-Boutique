Rails.application.routes.draw do

	root 'items#index'

	devise_for :users
	resources :users

	resources :items do
		resources :join_cart_items
	end
	resources :join_cart_items
	#resources :sessions, only: [:new, :create, :destroy]
	resources :carts
  resources :users, only: [:show] # pour le active storage

end
