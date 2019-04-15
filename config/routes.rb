Rails.application.routes.draw do

  root to: "organisations#index"

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  resources :organisations do
    resources :programmes
  end

  resources :programmes, only: :show do
    resources :clients
  end

  resources :clients, only: :show do
    resources :outcomes
  end

  resources :clients_programmes, only: [:index, :new, :create, :show, :edit, :update]

  resources :clients do

  end

  resources :outcomes

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')

end
