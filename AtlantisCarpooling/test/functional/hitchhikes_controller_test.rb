require 'test_helper'

class HitchhikesControllerTest < ActionController::TestCase
  setup do
    @hitchhike = hitchhikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hitchhikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hitchhike" do
    assert_difference('Hitchhike.count') do
      post :create, :hitchhike => @hitchhike.attributes
    end

    assert_redirected_to hitchhike_path(assigns(:hitchhike))
  end

  test "should show hitchhike" do
    get :show, :id => @hitchhike.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hitchhike.to_param
    assert_response :success
  end

  test "should update hitchhike" do
    put :update, :id => @hitchhike.to_param, :hitchhike => @hitchhike.attributes
    assert_redirected_to hitchhike_path(assigns(:hitchhike))
  end

  test "should destroy hitchhike" do
    assert_difference('Hitchhike.count', -1) do
      delete :destroy, :id => @hitchhike.to_param
    end

    assert_redirected_to hitchhikes_path
  end
end
