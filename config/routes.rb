Rails.application.routes.draw do

  resources :pages
  resources :journals
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'

end
