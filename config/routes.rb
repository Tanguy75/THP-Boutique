Rails.application.routes.draw do

  devise_for :users

  root 'items#index'

	resources :items
	resources :users
	resources :sessions, only: [:new, :create, :destroy]

end