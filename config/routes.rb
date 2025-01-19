Rails.application.routes.draw do
  # get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  get "goals", to: "goals#index"
  post "save_goal", to: "goals#save_goal"
  
  get 'passkey/:character_name', to: 'home#passkey', as: 'passkey'
  post "passkey/:character_name", to: "home#submit_passkey"

  get 'goals/:character_name/tracking', to: 'goals/tracking#index'

end
