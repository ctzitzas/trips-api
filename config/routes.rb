Rails.application.routes.draw do
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'trips#index'
  resources :trips

end
