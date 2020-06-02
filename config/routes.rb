Rails.application.routes.draw do

  get 'images/upload'
  post 'images/create'
  delete 'images/destroy_all'
  post 'images/download_all'
  root to: 'images#index'
  resources :images do
    post :update, on: :member
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
