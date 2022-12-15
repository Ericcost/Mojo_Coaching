Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :availabilities
      resources :cars
      resources :com_means
      resources :feedbacks
      resources :join_table_user_cars
      resources :join_table_user_com_means
      resources :join_table_user_tracks
      resources :meetings
      resources :tracks

      root to: "users#index"
    end
  resources :join_table_user_com_means, only: [:create, :destroy]
  resources :com_means, only: [:index]
  resources :join_table_user_cars, only: [:create, :update]
  resources :join_table_user_tracks, only: [:create, :update]
  resources :meetings, except: [:update, :destroy]
  resources :feedbacks, only: [:show, :new, :create]
  resources :availabilities, except: [:index, :show, :update]
  resources :cars, only: [:index, :show]
  resources :tracks, only: [:index, :show]
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root 'availabilities#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
