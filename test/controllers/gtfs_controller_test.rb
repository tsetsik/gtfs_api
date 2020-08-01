require 'test_helper'

class GtfsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gtfs_create_url
    assert_response :success
  end

end
