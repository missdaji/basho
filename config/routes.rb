Rails.application.routes.draw do
  get 'pins/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

<<<<<<< HEAD
  resources :pins, only: :index
=======
  resources :pins, only: [ :show ]

>>>>>>> d99c348c2d0c3fa8f1c3d4c2b5e6070fb771d93e
  # Defines the root path route ("/")
  # root "posts#index"
end
