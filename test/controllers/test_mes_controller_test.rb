require 'test_helper'

class TestMesControllerTest < ActionController::TestCase
  setup do
    @test_me = test_mes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_mes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_me" do
    assert_difference('TestMe.count') do
      post :create, test_me: { me: @test_me.me }
    end

    assert_redirected_to test_me_path(assigns(:test_me))
  end

  test "should show test_me" do
    get :show, id: @test_me
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_me
    assert_response :success
  end

  test "should update test_me" do
    patch :update, id: @test_me, test_me: { me: @test_me.me }
    assert_redirected_to test_me_path(assigns(:test_me))
  end

  test "should destroy test_me" do
    assert_difference('TestMe.count', -1) do
      delete :destroy, id: @test_me
    end

    assert_redirected_to test_mes_path
  end
end
