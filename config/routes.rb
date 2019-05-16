Rails.application.routes.draw do

  root to: "organisations#index"

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  resources :organisations do
    resources :programmes, only: [:index, :new, :create, :show]
  end

  resources :programmes do
    resources :clients, only: [:index, :new, :create, :show]
  end

  resources :clients do
    resources :outcomes, only: [:index, :new, :create, :show]
  end

  resources :clients_programmes, only: [:index, :new, :create, :show, :edit, :update]

  # resources :outcomes

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')

end
