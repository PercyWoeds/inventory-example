Rails.application.routes.draw do
  devise_for :users
  resources :units, only: %i(index new create edit update destroy)
  root to: 'pages#home'
end
