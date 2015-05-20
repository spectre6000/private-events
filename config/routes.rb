Rails.application.routes.draw do
  root                          'users#index'
  get     'login'           =>  'sessions#new'
  post    'login'           =>  'sessions#create'
  delete  'logout'          =>  'sessions#destroy'
  # get     'invite/new/:id'  =>  'invitations#new'
  # post    'invite/new/:id'  =>  'invitaions#create'
  resources :users
  resources :events, only: [:create, :new, :show, :index]
  resources :invitations, only: [:new, :create]
end
