require 'test_helper'

class GenderControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get trafficking" do
    get :trafficking
    assert_response :success
  end

end
