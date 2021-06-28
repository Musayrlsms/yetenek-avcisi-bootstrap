Rails.application.routes.draw do

  
  
 
  resources :adverts
  
  
  root to: 'homes#index'
  devise_for :users, controllers: { sessions: 'em/users/sessions', registrations: 'em/users/registrations', passwords: 'em/users/passwords'}
  namespace :wo do
    root to: 'workers#index', as: "workers"
    resources :workers
  end
  namespace :em do
    root to: 'employers#index',as: "employers"
    resources :employers
    resources :companies
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
