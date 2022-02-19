Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'signup'  => 'users#create'
  post   'signup'  => 'users#new'
  delete 'logout'  => 'sessions#destroy'

  resources :user , only: [:new, :create, :index]
  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
  resources :projects , only: [:new]

end