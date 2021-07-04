Rails.application.routes.draw do
  resources :adverts
  root to: 'homes#index'
  namespace :wo do
    devise_for :users, controllers: { sessions: 'wo/users/sessions', registrations: 'wo/users/registrations', passwords: 'wo/users/passwords'}
    root to: 'workers#index', as: 'workers'
    resources :workers
  end
  namespace :em do
    devise_for :users, controllers: { sessions: 'em/users/sessions', registrations: 'em/users/registrations', passwords: 'em/users/passwords'}
    root to: 'employers#index',as: 'employers'
    resources :employers
    resources :companies
    get '/employers/show' => 'employer#index', :as => 'user_root'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
