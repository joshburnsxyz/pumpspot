# frozen_string_literal: true

require "test_helper"

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get map_index_url
    assert_response :success
  end

  test "should return a set of results for the map filtered by category" do
    get "#{map_index_url}?cat=Lake"
    assert_response :success
  end

  test "should return a set of results for the map filtered by name" do
    get "#{map_index_url}?name=Lake"
    assert_response :success
  end

end
