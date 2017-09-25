Rails.application.routes.draw do
  root to: 'twerks#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :twerks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
