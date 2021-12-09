Rails.application.routes.draw do
  get 'sign_ups', to: 'sign_ups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
end
