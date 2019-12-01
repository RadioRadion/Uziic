Rails.application.routes.draw do
  devise_for :users
  root to: 'songs#index'

  resources :lists, only: :index

  resources :songs, only: [] do
    resources :list_songs
  end

  resources :users, only: [] do
    resources :favorites, only: [ :create, :delete ]
    resources :reposts, only: [ :index, :create, :destroy ]
  end

  namespace :user do
    resources :lists do
      member do
        post 'delete_song'
      end
    end
  end

  namespace :artist do
    resources :songs
  end

end
