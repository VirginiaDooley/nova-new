Rails.application.routes.draw do
  devise_for :users

  resources :organisations do
    resources :programmes
  end

  resources :programmes do
    resources :clients
  end

  resources :clients, only: [:show]

  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
