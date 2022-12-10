# frozen_string_literal: true

Rails.application.routes.draw do
  # Mount API
  namespace :api do
    get "all", to: "water#index"
    get "category/:category_name", to: "water#category"
  end

  # Maps
  get "map", to: "map#index", as: "map_index"

  # Home page
  root "home#index"
end
