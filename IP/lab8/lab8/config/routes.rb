Rails.application.routes.draw do
  resources :users
  root :to => 'numbers#input'
  get 'numbers/input'
  get 'numbers/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
