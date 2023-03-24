Rails.application.routes.draw do
  devise_for :users
  resources :splash, only: [:index]

  resources :groups, only: [:index, :new, :create] do
    resources :transacs, only: [:index]
  end

  resources :transacs, only: [:new, :create]

  devise_scope :user do
    authenticated :user do
      root "groups#index", as: :authenticated_root
    end
    unauthenticated :user do
      root "splash#index", as: :unauthenticated_root
    end
  end
end
