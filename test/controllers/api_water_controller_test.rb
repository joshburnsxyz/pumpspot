# frozen_string_literal: true

require "test_helper"

class ApiWaterControllerTest < ActionDispatch::IntegrationTest
  test "should return a list of resources in the database" do
    get "#{api_all_url}"
    assert_response :success
  end

  test "should return a list of resources from a given category" do
    get "/api/category/lake"
    assert_response :success
  end
end
