# frozen_string_literal: true

require "test_helper"

class WaterResourceTest < ActiveSupport::TestCase
  setup do
    @wr = water_resources(:lake_eildon)
  end

  test "can save a WaterResource object" do
    assert @wr.save()
  end

  test "will not save WaterResource object without title" do
    wr = @wr
    wr.title = nil
    assert_not wr.save()
  end

  test "will not save WaterResource object without capacity" do
    wr = @wr
    wr.capacity = nil
    assert_not wr.save()
  end

  test "will not save WaterResource object without gps_lon" do
    wr = @wr
    wr.gps_lon = nil
    assert_not wr.save()
  end

  test "will not save WaterResource object without gps_lat" do
    wr = @wr
    wr.gps_lat = nil
    assert_not wr.save()
  end

  test "should return the correct category" do
    wr = @wr
    res = wr.category.encode("utf-8")
    assert_equal "lake", res
  end

  test "should display salt_water as false" do
    wr = @wr
    got = wr.salt_water
    assert_equal false, got
  end
end
