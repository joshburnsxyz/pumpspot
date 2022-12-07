class MapController < ApplicationController
  def index
    if params["cat"] != nil
      cat = params["cat"]
      @q = WaterResource.filter_by_category(cat)
    else
      @q = WaterResource.all
    end
    Rails.logger.info("Queried Resource List: #{@q}")
  end
end
