require 'test_helper'

class PdfsControllerTest < ActionController::TestCase
  test "should get trafficking" do
    get :trafficking
    assert_response :success
  end

end
