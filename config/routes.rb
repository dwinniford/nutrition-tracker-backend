Rails.application.routes.draw do
  
  get 'search/recipe'
  root to: "application#cookie"
  resources :meal_plans
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
