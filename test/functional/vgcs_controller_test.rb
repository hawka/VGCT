require 'test_helper'

class VgcsControllerTest < ActionController::TestCase
  setup do
    @vgc = vgcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vgcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vgc" do
    assert_difference('Vgc.count') do
      post :create, vgc: @vgc.attributes
    end

    assert_redirected_to vgc_path(assigns(:vgc))
  end

  test "should show vgc" do
    get :show, id: @vgc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vgc.to_param
    assert_response :success
  end

  test "should update vgc" do
    put :update, id: @vgc.to_param, vgc: @vgc.attributes
    assert_redirected_to vgc_path(assigns(:vgc))
  end

  test "should destroy vgc" do
    assert_difference('Vgc.count', -1) do
      delete :destroy, id: @vgc.to_param
    end

    assert_redirected_to vgcs_path
  end
end
