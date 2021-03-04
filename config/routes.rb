Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/destroy'
  # get 'bookings/edit'
  # get 'bookings/update'
  # get 'experiences/index'
  # get 'experiences/show'
  # get 'experiences/new'
  # get 'experiences/create'
  # get 'experiences/edit'
  # get 'experiences/destroy'
  # get 'experiences/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences do
    resources :bookings, only: [:index, :show, :new, :update, :edit, :create]
  end

  resources :bookings, only: [:destroy]

  resource :dashboard, only: [:show]
end
