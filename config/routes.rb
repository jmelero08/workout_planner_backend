Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :workout_plans, only: [:index, :create]
      resources :users, only: [:index, :create]
      resources :categories, only: [:index]
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
    end
  end  
end
