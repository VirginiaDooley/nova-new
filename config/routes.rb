Rails.application.routes.draw do
  resources :clients
  resources :organisations do
    resources :programmes
  end

  resources :programmes

  root 'organisations#index'

end
