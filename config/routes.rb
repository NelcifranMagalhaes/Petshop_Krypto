Rails.application.routes.draw do
  devise_for :users
  resources :breeds
  resources :dogs
  resources :appointments
  resources :diseases
  root to: 'welcome#index'
end
