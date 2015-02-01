Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :scores
  resources :leaderboards do
    resource :score
  end
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  root to: 'high_voltage/pages#show', id: 'root'

mount MailPreview => 'mail_view' if Rails.env.development?end
