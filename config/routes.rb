Rails.application.routes.draw do
  resources :rolladexes
  get '/about', to: 'home#about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
