Rails.application.routes.draw do
  resources :assignments
  root to: "tasks#index"

  resources :users
  resources :entries, except: [:index, :new]
  resources :tasks do
    resources :entries, only: [:index, :new]

    member do
      patch :approve
      patch :decline
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
