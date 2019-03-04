Rails.application.routes.draw do
<<<<<<< HEAD

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD

  resources :items
=======
  root 'items#index'

>>>>>>> d249515ed5d0ea772affa93fec89eddd514a6b0e
=======
  devise_for :users
  root 'items#index'

	resources :items
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
>>>>>>> fc1355686fd0f2981e41a3a7ef88081dec76686d
end
