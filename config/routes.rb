Rails.application.routes.draw do
  root "splash#index"
  
  devise_for :users

  resources :groups, only: [:index, :new, :create] do
    resources :transacs, only: [:index]
  end

  resources :transacs, only: [:new, :create]
end
