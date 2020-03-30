Rails.application.routes.draw do
  namespace :admin do
    resources :cars
  end

  resources :cars, only: [:index, :show]
  devise_for :users
  root to: 'home#index'
end
