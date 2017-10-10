require 'test_helper'

class SumsControllerTest < ActionDispatch::IntegrationTest
  test "should get find_sum" do
    get sums_find_sum_url
    assert_response :success
  end

end
