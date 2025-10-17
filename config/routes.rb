Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "static#index"

  get "/", to: "static#index", as: :home
  get "/about", to: "static#about", as: :about

  get "/oscal_schemas", to: "oscal_schemas#index", as: :oscal_schemas
  get "/oscal_schemas/:id", to: "oscal_schemas#show", as: :oscal_schema
  get "/oscal_schemas/new", to: "oscal_schemas#new"
  post "/oscal_schemas", to: "oscal_schemas#create"
  get "/oscal_schemas/:id/edit", to: "oscal_schemas#edit"
  patch "/oscal_schemas/:id", to: "oscal_schemas#update"
  put "/oscal_schemas/:id", to: "oscal_schemas#update"
  delete "/oscal_schemas/:id", to: "oscal_schemas#destroy"

  get "/oscal_references", to: "oscal_references#index", as: :oscal_references
  get "/oscal_references/:id", to: "oscal_references#show", as: :oscal_reference
  get "/oscal_references/new", to: "oscal_references#new"
  post "/oscal_references", to: "oscal_references#create"
  get "/oscal_references/:id/edit", to: "oscal_references#edit"
  patch "/oscal_references/:id", to: "oscal_references#update"
  put "/oscal_references/:id", to: "oscal_references#update"
  delete "/oscal_references/:id", to: "oscal_references#destroy"

  get "/oscal_models", to: "oscal_models#index", as: :oscal_models
  get "/oscal_models/:id", to: "oscal_models#show", as: :oscal_model
  get "/oscal_models/new", to: "oscal_models#new"
  post "/oscal_models", to: "oscal_models#create"
  get "/oscal_models/:id/edit", to: "oscal_models#edit"
  patch "/oscal_models/:id", to: "oscal_models#update"
  put "/oscal_models/:id", to: "oscal_models#update"
  delete "/oscal_models/:id", to: "oscal_models#destroy"

  # get "/oscal_layers", to: "oscal_layers#index", as: :oscal_layers
  # get "/oscal_layers/:id", to: "oscal_layers#show", as: :oscal_layer
  # get "/oscal_layers/new", to: "oscal_layers#new", as: :new_oscal_layer
  # post "/oscal_layers", to: "oscal_layers#create"
  # get "/oscal_layers/:id/edit", to: "oscal_layers#edit"
  # patch "/oscal_layers/:id", to: "oscal_layers#update"
  # put "/oscal_layers/:id", to: "oscal_layers#update"
  # delete "/oscal_layers/:id", to: "oscal_layers#destroy"
  resources :oscal_layers

end
