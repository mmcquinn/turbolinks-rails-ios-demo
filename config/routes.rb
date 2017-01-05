Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => "users/registrations",
    :sessions => "users/sessions"
  }

  root 'pages#home'

  get :pageone, to: 'pages#page1', as: :pageone
  get :pagetwo, to: 'pages#page2', as: :pagetwo
  get :settings, to: 'pages#settings', as: :settings
  post :settings, to: 'pages#update_settings', as: :update_settings
end
