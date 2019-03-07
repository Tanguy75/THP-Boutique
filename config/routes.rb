Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

	resources :charges
	
	resources :users

	resources :items do
		resources :join_cart_items
	end 
	resources :join_cart_items
	#resources :sessions, only: [:new, :create, :destroy]
	resources :carts
	resources :orders

end