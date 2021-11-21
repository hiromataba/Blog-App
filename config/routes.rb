Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  get '/users/:user_id/posts/:id/destroy', to: 'posts#destroy', as: 'posts/destroy'
  get '/comments/:id', to: 'comments#destroy', as: 'posts/destroy/comment'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:user_id/posts', to: 'posts#index', as: "posts"
  post '/users/:user_id/posts', to: 'posts#create'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'posts/show'
  post '/users/:user_id/posts/:id/like', to: 'posts#like', as: 'posts/like'

  post '/users/:user_id/posts/comment', to: 'comments#create', as: "comments"
  resources :comments, only: [:destroy]
  resources :likes, only: [:destroy]

  namespace :api , defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:index] do
        resources :comments, only: [:index, :create]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
