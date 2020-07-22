Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # users can sign up multiple times (so plural 'resources' and 'users')
  resources :users

  # users can make only 1 session (so singular 'resource' and 'session')
  resource :session

  get "about", to: "pages#about"

  root "pages#home"

end
