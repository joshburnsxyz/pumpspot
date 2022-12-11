# frozen_string_literal: true

require "test_helper"

class ApiWaterControllerTest < ActionDispatch::IntegrationTest
  test "should return a 200 OK" do
    get "#{api_healthcheck_url}"
    assert_response :success
  end
end
