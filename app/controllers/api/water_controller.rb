# frozen_string_literal: true

module Api
  class WaterController < ApplicationController
    def index
      @wr = WaterResource.all
      render json: @wr, status: :ok
    end
  end
end
