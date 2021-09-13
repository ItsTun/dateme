# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources :personals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
