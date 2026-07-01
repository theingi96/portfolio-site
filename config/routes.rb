Rails.application.routes.draw do
  get 'resumes/new'
  get 'resumes/create'
  devise_for :users
  root "home#index"
  resources :resumes, only: [:new, :create]
end