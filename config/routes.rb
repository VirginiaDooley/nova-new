Rails.application.routes.draw do
  resources :organisations do
    resources :programmes
  end

  resources :programmes

  root 'organisations#index'

end
