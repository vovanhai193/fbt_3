Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks#create"}
  namespace :admin do
    root "users#index", as: "root"
    resources :users, only: [:index, :destroy]
  end
  resources :tours, only: [:index, :show]
end
