Rails.application.routes.draw do
  get 'programmes/create' 

  resources :organisations do
    resources :programmes
  end

  root 'organisations#index'

end
