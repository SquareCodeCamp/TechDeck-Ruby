require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get v1" do
    get :v1
    assert_response :success
  end

end
