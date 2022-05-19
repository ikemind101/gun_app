Rails.application.routes.draw do
  resources :links
  resources :wishlists
  resources :guns

  root to:'guns#index'
end
