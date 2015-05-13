Rails.application.routes.draw do
  root                  'users#show'
  get     'signup'  =>  'users#new'
  post    'signup'  =>  'users#create'
  get     'index'   =>  'users#show'
  get     'login'   =>  'sessions#new'
  post    'login'   =>  'sessions#create'
  delete  'logout'  =>  'sessions#destroy'
end
