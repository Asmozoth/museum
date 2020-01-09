Rails.application.routes.draw do
  resources :catastrophes
  root to: "catastrophes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
