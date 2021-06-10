Rails.application.routes.draw do
  devise_for :users
  resources :notes
  #devise_for :users do 
    #resources :notes
  #end
  #get "/notes", to: "notes#index"
  #get "/notes/new", to "notes#new"
  #post "/notes", to: "notes#create"
  root to: "notes#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/register', action: :register, controller
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
end
