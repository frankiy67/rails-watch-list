Rails.application.routes.draw do
  root to: "lists#index"

  resources :lists, except: :index do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
end
