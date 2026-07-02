Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  
  get "about", to: "about#index"
  get "skills", to: "skills#index"
  get "projects", to: "projects#index"
  get "experience", to: "experiences#index"
  get "contact", to: "contacts#index"
  resources :resumes, only: [:new, :create]
end