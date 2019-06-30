Rails.application.routes.draw do
	devise_for :users
  resources :breeds
  resources :dogs

  root to: 'welcome#index'
end
