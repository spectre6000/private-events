Rails.application.routes.draw do
  root                    'users#index'
  # # get     'signup'    =>  'users#new'
  # # post    'signup'    =>  'users#create'
  # # get     'user/:id'  =>  'users#show'
  get     'login'     =>  'sessions#new'
  post    'login'     =>  'sessions#create'
  delete  'logout'    =>  'sessions#destroy'
  resources :users
  resources :events, only: :create
end
