require 'test_helper'

class SkydiversControllerTest < ActionController::TestCase
  setup do
    @skydiver = skydivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skydivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skydiver" do
    assert_difference('Skydiver.count') do
      post :create, skydiver: { last: @skydiver.last, name: @skydiver.name, picture: @skydiver.picture }
    end

    assert_redirected_to skydiver_path(assigns(:skydiver))
  end

  test "should show skydiver" do
    get :show, id: @skydiver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skydiver
    assert_response :success
  end

  test "should update skydiver" do
    patch :update, id: @skydiver, skydiver: { last: @skydiver.last, name: @skydiver.name, picture: @skydiver.picture }
    assert_redirected_to skydiver_path(assigns(:skydiver))
  end

  test "should destroy skydiver" do
    assert_difference('Skydiver.count', -1) do
      delete :destroy, id: @skydiver
    end

    assert_redirected_to skydivers_path
  end
end
