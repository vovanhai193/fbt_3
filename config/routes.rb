Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    root "users#index", as: "root"
    resources :users, only: [:index, :destroy]
  end
  resources :tours, only: [:index, :show]
end
