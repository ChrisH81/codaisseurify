Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :artists
  resources :albums do
    collection do
      get 'remove_all'
    end
  end
end
