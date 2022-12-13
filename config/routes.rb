Rails.application.routes.draw do
  resources :join_table_user_com_means
  resources :com_means
  resources :join_table_user_cars
  resources :join_table_user_tracks
  resources :meetings
  resources :feedbacks
  resources :availabilities
  resources :cars
  resources :tracks
  devise_for :users
  resources :users
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
