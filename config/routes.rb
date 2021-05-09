Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :show]
  resources :books
end
