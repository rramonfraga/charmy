Rails.application.routes.draw do
  resources :styles, only: :index
  resources :sizes, only: :index
  resources :fashion_sets, only: :show do
    post 'suggest', on: :collection
  end
  resources :events, only: :create
  resources :users, only: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
