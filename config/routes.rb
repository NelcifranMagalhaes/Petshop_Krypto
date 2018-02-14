Rails.application.routes.draw do
  devise_for :useres
  resources :breeds
  resources :dogs

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
