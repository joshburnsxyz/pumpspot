class MapController < ApplicationController
  def index
    @wr = WaterResource.all
  end
end
