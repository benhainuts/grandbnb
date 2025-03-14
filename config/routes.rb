Rails.application.routes.draw do
  devise_for :users
  root to: "seniors#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :seniors, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :show, :edit, :update]
  end

  get "/dashboard", to: "pages#dashboard"

end
