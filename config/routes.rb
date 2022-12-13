Rails.application.routes.draw do
  resources :join_table_user_com_means, only: [:create, :destroy]
  resources :com_means, only: [:index]
  resources :join_table_user_cars, only: [:create, :update]
  resources :join_table_user_tracks, only: [:create, :update]
  resources :meetings
  resources :feedbacks, only: [:show, :new, :create]
  resources :availabilities
  resources :cars, only: [:index, :show]
  resources :tracks, only: [:index, :show]
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root 'availabilities#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
