Rails.application.routes.draw do

<<<<<<< HEAD
	root 'items#index'

	devise_for :users
	resources :users
=======
  devise_for :users
  root 'items#index'

	resources :charges, only: [:new, :create]
	
	resources :users, :path => "egodefou"
>>>>>>> d06ac7d0e31c0d6d85ae16a5d0b5bb2cb6e995a3

	resources :items, :path => "petitminou" do
		resources :join_cart_items
	end
	resources :join_cart_items
	#resources :sessions, only: [:new, :create, :destroy]
<<<<<<< HEAD
	resources :carts
  resources :users, only: [:show] # pour le active storage

end
=======
	resources :carts, :path => "donnenoustonargent"
	resources :orders, :path => "mercidenousengraisser"

	#get 'bienvenue', to: 'items#index'
	#get 'petitminou', to: 'items#show'

end
>>>>>>> d06ac7d0e31c0d6d85ae16a5d0b5bb2cb6e995a3
