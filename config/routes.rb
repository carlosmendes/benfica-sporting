Rails.application.routes.draw do
  

  # get '/', to: 'pages#team'
  root to: 'pages#team' # same as previous

  # get 'pages/about'
  # same as previous line
  get 'pages/about', to: 'pages#about'
  
  get 'about', to: 'pages#about'

  get 'team', to: 'pages#team'

  get 'pages/contact'

  get 'restaurants/index'
  
  # get 'restaurants', to: 'restaurants#index'
  
  get 'restaurants', to: 'restaurants#index', as: :portuguese_restaurants

  # get 'restaurants/1', to: 'restaurants#show'
  # get 'restaurants/2', to: 'restaurants#show'
  #  this is stupid, just use variables
  #  
  get 'restaurants/:id', to: 'restaurants#show'

  post 'restaurants', to: 'restaurants#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
