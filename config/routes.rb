Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :posts
  resources :users
  root to: 'users#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] 
  end
end

