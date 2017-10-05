Rails.application.routes.draw do
  resources :styles
  resources :fashion_sets, only: :suggest
  resources :events, only: :create
  resources :users, only: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
