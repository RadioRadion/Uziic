Rails.application.routes.draw do
  devise_for :users
  root to: 'songs#index'

  resources :lists, only: :index

  resources :songs, only: [] do
    resources :list_songs, only: [ :create, :delete ]
    resources :reposts, only: [ :create, :delete ]
  end

  resources :users, only: [] do
    resources :favorites, only: [ :create, :delete ]
  end

  namespace :user do
    resources :lists
  end

  namespace :artist do
    resources :songs
  end

end
