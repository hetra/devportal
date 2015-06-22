require 'test_helper'

class DevfilesControllerTest < ActionController::TestCase
  setup do
    @devfile = devfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devfile" do
    assert_difference('Devfile.count') do
      post :create, devfile: { contents: @devfile.contents, extension: @devfile.extension, name: @devfile.name }
    end

    assert_redirected_to devfile_path(assigns(:devfile))
  end

  test "should show devfile" do
    get :show, id: @devfile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devfile
    assert_response :success
  end

  test "should update devfile" do
    patch :update, id: @devfile, devfile: { contents: @devfile.contents, extension: @devfile.extension, name: @devfile.name }
    assert_redirected_to devfile_path(assigns(:devfile))
  end

  test "should destroy devfile" do
    assert_difference('Devfile.count', -1) do
      delete :destroy, id: @devfile
    end

    assert_redirected_to devfiles_path
  end
end
