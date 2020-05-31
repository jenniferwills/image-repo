Rails.application.routes.draw do

  get 'site/upload'
  get 'images/upload'
  post 'images/create'
  root to: 'images#index'
  resources :images do
    get :download, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
