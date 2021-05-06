Rails.application.routes.draw do
  root 'homes#index'
  get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: [:index, :show]
  resources :books
end
