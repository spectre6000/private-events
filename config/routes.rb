Rails.application.routes.draw do
  root                    'users#show'
  get     'signup'    =>  'users#new'
  post    'signup'    =>  'users#create'
  get     'index'     =>  'users#show'
  get     'login'     =>  'sessions#new'
  post    'login'     =>  'sessions#create'
  delete  'logout'    =>  'sessions#destroy'
  get     'new_event' =>  'events#new'
  post    'new_event' =>  'events#create'
  get     'event/:id' =>  'events#show'
  get     'events'    =>  'events#all'
end
