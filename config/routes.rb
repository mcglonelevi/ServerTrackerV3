Rails.application.routes.draw do
  devise_for :users
  resources :apikeys
  resources :servers do
    resources :error_events
  end
  resources :servers do
    resources :data_values
  end
  root to: "servers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
