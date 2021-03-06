# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
