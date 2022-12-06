class WaterResource < ApplicationRecord

  enum :category, %i(small_tank, medium_tank, large_tank, pond, reservoir, lake, river, hydrant, other)
end