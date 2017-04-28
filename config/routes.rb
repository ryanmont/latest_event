Rails.application.routes.draw do
  # get 'pages/homepage', to: 'pages#homepage'

  devise_for :users
  resources :attendees
  resources :events
  root to: 'pages#homepage'


end
