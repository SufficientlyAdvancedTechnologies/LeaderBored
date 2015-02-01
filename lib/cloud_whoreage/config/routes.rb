Rails.application.routes.draw do
  resources :blobs

  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
mount MailPreview => 'mail_view' if Rails.env.development?end
