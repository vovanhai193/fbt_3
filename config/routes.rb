Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users
  namespace :admin do
    root "users#index", as: "root"
    resources :users, only: [:index, :destroy]
  end
  resources :tours, only: [:index, :show]
end
