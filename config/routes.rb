Rails.application.routes.draw do
  devise_for :users
  resources :units, only: %i(index)
  root to: 'pages#home'
end
