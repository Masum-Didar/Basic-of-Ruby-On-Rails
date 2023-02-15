Rails.application.routes.draw do
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root "pages#home"
  root "sign_up#new"
  get "/signup" => "sign_up#new"
  post "/signup" => "sign_up#create"

  resources :users, only: [:index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
