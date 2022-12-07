class MapController < ApplicationController
  def index
    if params["q"] != nil
      cat = params["q"]
      @q = WaterResource.filter_by_category(cat)
    else
      @q = WaterResource.all
    end
    Rails.logger.info("Queried Resource List: #{@q}")
  end
end
