Rails.application.routes.draw do

  root to: 'characters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :characters, only: [:index, :create]
end
