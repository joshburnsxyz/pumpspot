# frozen_string_literal: true

Rails.application.routes.draw do
  # Mount API
  namespace :api do
    get "all", to: "water#index"
    get "category/:category_name", to: "water#category"
  end

  # Maps
  get "map", to: "map#index", as: "map_index"

  # Static Pages
  get "developers/open-source", to: "home#open_source", as: "open_source_credit"
  root "home#index"
end
