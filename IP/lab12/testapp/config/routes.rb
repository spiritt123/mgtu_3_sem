Rails.application.routes.draw do
  root 'users#index'
  get 'number/view'
  resources :users
  get 'users/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
