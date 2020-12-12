Rails.application.routes.draw do
  devise_for :users
  root 'attendees#new'
  resources :attendees, only: [:index, :new, :create, :destroy]
  resources :numbers, only: [:index, :create]
  resources :winners, only: [:index]
  resources :users, only: [:index]
end