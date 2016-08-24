Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :feedbacks, only: [:show, :new, :create, :update]
end
