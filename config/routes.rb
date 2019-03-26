Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :organisations do
    resources :programmes
  end

  resources :programmes do
    resources :clients
  end

  root 'home#index'

end
