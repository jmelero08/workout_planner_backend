Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :workout_plans
      resources :categories, only: [:index]
    end
  end  
end
