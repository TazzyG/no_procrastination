Rails.application.routes.draw do
  namespace :admin do
    resources :posts
  end
  root "pages#home"
  resource :session
  resources :passwords, param: :token

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    namespace :admin do
    # This sets the homepage for your admin panel (e.g., visiting http://localhost:3000/admin)
    root to: "dashboard#index"

    # Add your hobby models/features here as you build them
    resources :posts
    # resources :projects
    # resources :tasks
  end


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
