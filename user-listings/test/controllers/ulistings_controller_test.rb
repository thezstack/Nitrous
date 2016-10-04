require 'test_helper'

class UlistingsControllerTest < ActionController::TestCase
  setup do
    @ulisting = ulistings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ulistings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ulisting" do
    assert_difference('Ulisting.count') do
      post :create, ulisting: { email: @ulisting.email, first_name: @ulisting.first_name, last_name: @ulisting.last_name, postition: @ulisting.postition }
    end

    assert_redirected_to ulisting_path(assigns(:ulisting))
  end

  test "should show ulisting" do
    get :show, id: @ulisting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ulisting
    assert_response :success
  end

  test "should update ulisting" do
    patch :update, id: @ulisting, ulisting: { email: @ulisting.email, first_name: @ulisting.first_name, last_name: @ulisting.last_name, postition: @ulisting.postition }
    assert_redirected_to ulisting_path(assigns(:ulisting))
  end

  test "should destroy ulisting" do
    assert_difference('Ulisting.count', -1) do
      delete :destroy, id: @ulisting
    end

    assert_redirected_to ulistings_path
  end
end
