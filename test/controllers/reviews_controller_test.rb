require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get rspec" do
    get reviews_rspec_url
    assert_response :success
  end

  test "should get spec/models" do
    get reviews_spec/models_url
    assert_response :success
  end

end
