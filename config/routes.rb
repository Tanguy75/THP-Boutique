Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

	resources :charges, only: [:new, :create]
	
	resources :users, :path => "egodefou"

	resources :items, :path => "petitminou" do
		resources :join_cart_items
	end 
	resources :join_cart_items
	#resources :sessions, only: [:new, :create, :destroy]
	resources :carts, :path => "donnenoustonargent"
	resources :orders, :path => "mercidenousengraisser"

	#get 'bienvenue', to: 'items#index'
	#get 'petitminou', to: 'items#show'

end