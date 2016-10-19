Rails.application.routes.draw do
  namespace :user do
    get "static_pages/home"
  end

  devise_for :users
  namespace :admin do
    root "users#index", as: "root"
    resources :users, only: [:index, :destroy]
  end
  resources :tours, only: [:index, :show]
end
