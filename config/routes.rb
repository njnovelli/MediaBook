Rails.application.routes.draw do
  
  root 'welcome#index'
  devise_for :users

  resources :activities, only: [:index]

  resources :friendships, only: [:create, :destroy, :accept] do 
  	member do 
  		put :accept
  	end
  end

  resources :posts, only: [:edit, :create, :update, :destroy]

  resources :users, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
