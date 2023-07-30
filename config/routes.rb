Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workouts, defaults: { format: "json" }
  resources :workout_muscles, defaults: { format: "json" }
  resources :body_groups, defaults: { format: "json" }
  resources :muscles, defaults: { format: "json" }
  resources :goals, only: [:create]
  post "/sessions" => "sessions#create"

  resources :users do
    resources :workouts
  end
end
