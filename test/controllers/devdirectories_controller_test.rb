require 'test_helper'

class DevdirectoriesControllerTest < ActionController::TestCase
  setup do
    @devdirectory = devdirectories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devdirectories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devdirectory" do
    assert_difference('Devdirectory.count') do
      post :create, devdirectory: { name: @devdirectory.name }
    end

    assert_redirected_to devdirectory_path(assigns(:devdirectory))
  end

  test "should show devdirectory" do
    get :show, id: @devdirectory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devdirectory
    assert_response :success
  end

  test "should update devdirectory" do
    patch :update, id: @devdirectory, devdirectory: { name: @devdirectory.name }
    assert_redirected_to devdirectory_path(assigns(:devdirectory))
  end

  test "should destroy devdirectory" do
    assert_difference('Devdirectory.count', -1) do
      delete :destroy, id: @devdirectory
    end

    assert_redirected_to devdirectories_path
  end
end
