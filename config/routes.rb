Rails.application.routes.draw do
  devise_for :users
  resources :rolladexes
  get '/about', to: 'home#about'
  # if user_signed_in?
  root 'rolladexes#index'
  # else
  #   root 'home#index'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
