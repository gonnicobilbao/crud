Rails.application.routes.draw do
  root 'visitors#index'
  resources :people
  get '/products', to: 'products#index'
  
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'


  #resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
