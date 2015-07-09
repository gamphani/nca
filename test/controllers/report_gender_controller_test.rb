require 'test_helper'

class ReportGenderControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get trafficking" do
    get :trafficking
    assert_response :success
  end

  test "should get theology" do
    get :theology
    assert_response :success
  end

end
