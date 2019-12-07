Rails.application.routes.draw do
  resources :rentals
  resources :movies
  resources :genres
  resources :customers
end
