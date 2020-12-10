Rails.application.routes.draw do
  root 'com#index'
  resources :users
  get 'com/index'
  get 'com/create_post'
  get 'com/like_post'
  post 'com/like_post'
  post 'com/create_comment'
  get 'com/create_comment'

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
