Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

	resources :charges, only: [:new, :create]
	resources :items
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	resources :carts
end