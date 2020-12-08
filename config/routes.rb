Rails.application.routes.draw do
  devise_for :users
  root 'attendees#index'
  resources :attendees, only: [:index, :new, :create]
  resources :numbers, only: [:create]
  resources :users, only: [:index]
end
