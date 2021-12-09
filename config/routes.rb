Rails.application.routes.draw do
  root "homepage#index"
  get 'sign_ups', to: 'sign_ups#index'
  get '/log-in', to: 'sessions#new'
  get '/', to: 'sessions#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts
end
