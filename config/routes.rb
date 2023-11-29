Rails.application.routes.draw do
  get 'pins/index'
  get '/tagged', to: "pins#tagged", as: :tagged
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :pins, only: [ :show, :index, :new, :create, :edit, :update ] do
    member do
      patch :visit
      patch :to_visit
      patch :public
      patch :private
    end
  end

  get '/search', to: "pages#search"

  # Defines the root path route ("/")
  # root "posts#index"
end
