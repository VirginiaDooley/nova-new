Rails.application.routes.draw do
  resources :clients
  resources :organisations do
    resources :programmes
  end

  resources :programmes do
    resources :clients
  end

  root 'home#index'

end
