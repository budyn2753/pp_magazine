Rails.application.routes.draw do
  resources :devices
  resources :categories
  devise_for :users

  root 'devices#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
