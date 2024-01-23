Rails.application.routes.draw do
  root "clinic#index"

  get "/clinic", to: "clinic#index"
  
  namespace :user do
    get 'translations/index'
    get 'translations/show'
    get 'translations/create'
    get 'translations/new'
    get 'translations/edit'
    get 'translations/update'
    get 'translations/destroy'
    post "patients", to: "patients#create"
    resources :treatments, only: [:index, :show]
    resources :patients
  end

  namespace :admin do
    # get '/translations/show', to: "translations#show"
    # get '/translations/new/:id', to: "translations#new"
    # post '/translations/create', to: "translations#create"
    # get '/translations/edit/:id', to: "translations#edit"
    # put '/translations/update', to: "translations#update"
    # delete '/translations/destroy', to: "translations#destroy"
    resources :translations
    get "/treatments", to: "treatments#index"
    resources :treatments, only: [ :show, :edit, :update]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
