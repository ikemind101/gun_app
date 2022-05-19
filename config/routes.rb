Rails.application.routes.draw do
  resources :guns

  root to:'guns#index'
end
