require 'test_helper'

class BouncersControllerTest < ActionController::TestCase
  setup do
    @bouncer = bouncers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bouncers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bouncer" do
    assert_difference('Bouncer.count') do
      post :create, :bouncer => @bouncer.attributes
    end

    assert_redirected_to bouncer_path(assigns(:bouncer))
  end

  test "should show bouncer" do
    get :show, :id => @bouncer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bouncer.to_param
    assert_response :success
  end

  test "should update bouncer" do
    put :update, :id => @bouncer.to_param, :bouncer => @bouncer.attributes
    assert_redirected_to bouncer_path(assigns(:bouncer))
  end

  test "should destroy bouncer" do
    assert_difference('Bouncer.count', -1) do
      delete :destroy, :id => @bouncer.to_param
    end

    assert_redirected_to bouncers_path
  end
end
