# frozen_string_literal: true

class WaterResource < ApplicationRecord
  enum :category, %i(small_tank medium_tank large_tank pond reservoir lake river hydrant other)

  # Ensure data is present
  validates :title, presence: true
  validates :capacity, presence: true
  validates :gps_lon, presence: true
  validates :gps_lat, presence: true
  validates :designation, presence: true
  validates :area, presence: true
  validates :surface_elevation, presence: true
end
