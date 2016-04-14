Rails.application.routes.draw do

  devise_for :users
  
  get 'home/index'
  
  root 'home#index'
  
  resources :users do
    resources :items, only: [:create]    
  end
end
