Rails.application.routes.draw do
  resources :cars
  resources :accidents
  resources :drivers
  root :to => 'home#index'

  get "home/index"

  resources :photos, only: [:new, :create, :index, :destroy]
  root to: 'photos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
