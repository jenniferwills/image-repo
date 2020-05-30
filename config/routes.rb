Rails.application.routes.draw do
  get 'pages/public'
  get 'pages/home'
  get 'pages/private'

  post 'files/upload'
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
