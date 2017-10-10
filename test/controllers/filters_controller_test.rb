require 'test_helper'

class FiltersControllerTest < ActionDispatch::IntegrationTest
  test "should get find_filtered_sum" do
    get filters_find_filtered_sum_url
    assert_response :success
  end

end
