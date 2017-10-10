require 'test_helper'

class IntervalsControllerTest < ActionDispatch::IntegrationTest
  test "should get find_max_sum_between_intervals" do
    get intervals_find_max_sum_between_intervals_url
    assert_response :success
  end

end
