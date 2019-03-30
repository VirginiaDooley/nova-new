Rails.application.routes.draw do
  devise_for :users

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

  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
