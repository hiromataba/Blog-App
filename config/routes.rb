Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  root 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] 
  end
end

