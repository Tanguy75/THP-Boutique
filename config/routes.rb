Rails.application.routes.draw do

	root 'items#index'
	
	devise_for :users
	resources :users

	resources :items do
		resources :join_cart_items
	end 
	
	#resources :sessions, only: [:new, :create, :destroy]
	resources :carts


end