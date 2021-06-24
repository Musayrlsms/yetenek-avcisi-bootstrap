Rails.application.routes.draw do

  
  resources :employers
  get 'homes/index'
  namespace :em do
    devise_for :users

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
