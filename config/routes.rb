Rails.application.routes.draw do
  
  root 'trips#index'

  resources :trips do
    resources :locations
  end

  resources :locations do
    resources :addresses
  end

  resources :locations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
