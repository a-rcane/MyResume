Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  get  'signup'   => 'sessions#signin'
  post  'signup'   => 'sessions#create'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  resources :projects , only: [:new]

end