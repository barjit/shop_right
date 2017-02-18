Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticated :user do
    root 'dashboard#index'
  end

  root 'home#index'

  post 'shopping_list/create'

  resources :meals do
    resources :ingredients
  end

  
  devise_for :users, controllers: {   
    sessions: 'users/sessions',   
    passwords: 'users/passwords',   
    registrations: 'users/registrations' 
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
