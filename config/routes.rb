Rails.application.routes.draw do

	root 'items#index'
	
	devise_for :users
	resources :users

	resources :items do
		resources :join_cart_items
	end 
	resources :join_cart_items
	resources :carts, only: [:show]
	resources :orders
	resources :order_items


end