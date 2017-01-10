Rails.application.routes.draw do
  devise_for :riders
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/index'

  get 'landing_page/show'
  authenticated :user do
    root :to => "dashboard#index"
  end
  
  root to: 'landing_page#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
  }
end