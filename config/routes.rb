Rails.application.routes.draw do
  resources :leagues
  resources :participants
  resources :punctuations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
