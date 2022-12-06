Rails.application.routes.draw do
  resources :join_table_user_cars
  resources :communication_means
  resources :join_table_user_tracks
  resources :meetings
  resources :feedbacks
  resources :availabilities
  resources :cars
  resources :tracks
  devise_for :users
  resources :users
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
