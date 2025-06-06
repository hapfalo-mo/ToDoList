Rails.application.routes.draw do
  resources :to_do_features
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "sessions#new"
  get "users-view", to: "users#index"
  # get "login", to: "login#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :to_dos do
    resources :to_do_features
  end
  delete "logout", to: "sessions#destroy"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
