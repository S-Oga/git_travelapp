Rails.application.routes.draw do
  devise_for :users
    resources :travels
    resources :users
    resources :plans
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "travels#index"


end
