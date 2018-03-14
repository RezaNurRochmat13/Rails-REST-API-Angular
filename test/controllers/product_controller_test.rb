require 'test_helper'

class ProductControllerTest < ActionController::TestCase
  test "should get api/v1" do
    get :api/v1
    assert_response :success
  end

end
