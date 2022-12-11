# frozen_string_literal: true

module Api
  class HealthcheckController < ApplicationController
    def index
      render json: { "message": "alive" }.to_json, status: :ok
    end
  end
end
