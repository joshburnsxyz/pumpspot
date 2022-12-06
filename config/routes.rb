# frozen_string_literal: true

Rails.application.routes.draw do
  # Mount API
  namespace :api do
    get "water", to: "water#index"
  end

  # Home page
  root "home#index"
end
