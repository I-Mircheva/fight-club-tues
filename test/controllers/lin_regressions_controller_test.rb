require 'test_helper'

class LinRegressionsControllerTest < ActionDispatch::IntegrationTest
  test "should get find_slope_and_intercept" do
    get lin_regressions_find_slope_and_intercept_url
    assert_response :success
  end

end
