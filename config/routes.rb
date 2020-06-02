Rails.application.routes.draw do

  # get 'site/upload'
  get 'images/upload'
  post 'images/create'
  delete 'images/destroy_all'
  post 'images/download_all'
  root to: 'images#index'
  resources :images do
    get :download, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
