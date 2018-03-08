  Rails.application.routes.draw do
    get 'braintree/new'

  # resource :listings do 
  #   get 'search'
  # end

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :galleries

  resources :users, controller: "users", only: [:create, :edit, :update, :show] do
    resource :password, controller: "clearance/passwords", only: [:create, :edit, :update]
  end

resources :listings do
  resources :reservations
end

    get "/sign_in" => "clearance/sessions#new", as: "sign_in"
    delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
    get "/sign_up" => "clearance/users#new", as: "sign_up"
  #the priority is always based upon order of creation: first created => highest priority

  root 'welcome#index'
  get '/custom_joke' => 'welcome#random'
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  post 'braintree/checkout'
  get "/search" => 'listings#search'
 
end
  


 