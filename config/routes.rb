Rails.application.routes.draw do
  resource :authorization, only: [:create]

  resources :vetexes
  resources :utilities
  resources :thread_items
  resources :corduras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
