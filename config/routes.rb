Rails.application.routes.draw do


  devise_for :users
  resources :attendees
  resources :events
  
  root to: 'pages#homepage'


end
