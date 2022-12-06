# frozen_string_literal: true

Rails.application.routes.draw do
  # Mount API
  namespace :api do
    get "all", to: "water#index"
    get "search", to: "water#search"
  end

  # Home page
  root "home#index"
end
