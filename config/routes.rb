Rails.application.routes.draw do

  get 'site/home'
  get 'site/upload'
  get 'site/private'
  get 'images/private'
  get 'images/public'
  get 'images/upload'
  post 'images/create'

  root to: 'site#home'
  resources :users
  # resources :images
  # get 'site/home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
