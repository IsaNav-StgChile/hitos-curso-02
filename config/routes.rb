Rails.application.routes.draw do
  devise_for :admins

  authenticate :admin do

  resources :products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#index'
  
end
