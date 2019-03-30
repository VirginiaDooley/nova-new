Rails.application.routes.draw do

  root to: "organisations#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :organisations do
    resources :programmes
  end

  resources :programmes do
    resources :clients
  end

  resources :clients do
    resources :outcomes
  end

  resources :clients

  resources :outcomes

  # Routes for Google authentication
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')

end
