Rails.application.routes.draw do
  get 'programmes/create'
  get 'programmes/show'

  resources :organisations do
    resources :programmes
  end

  root 'organisations#index'

end
