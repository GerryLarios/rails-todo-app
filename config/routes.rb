# frozen_string_literal: true

Rails.application.routes.draw do
  get 'tasks/index'
  devise_for :users
  root 'home#index'
  get 'lists', to: 'lists#index'

  resources :lists, only: [:index] do
    resources :tasks, only: [:index]
  end
end
