# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: 'main#index'
  get 'sign_ups', to: 'sign_ups#new'
  post 'sign_ups', to: 'sign_ups#create'
  delete 'log_out', to: 'sessions#destroy'
  resources :posts
end
