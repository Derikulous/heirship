require 'test_helper'

class HeirshipsControllerTest < ActionController::TestCase
  setup do
    @heirship = heirships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heirships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heirship" do
    assert_difference('Heirship.count') do
      post :create, heirship: { transfer_date: @heirship.transfer_date }
    end

    assert_redirected_to heirship_path(assigns(:heirship))
  end

  test "should show heirship" do
    get :show, id: @heirship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heirship
    assert_response :success
  end

  test "should update heirship" do
    patch :update, id: @heirship, heirship: { transfer_date: @heirship.transfer_date }
    assert_redirected_to heirship_path(assigns(:heirship))
  end

  test "should destroy heirship" do
    assert_difference('Heirship.count', -1) do
      delete :destroy, id: @heirship
    end

    assert_redirected_to heirships_path
  end
end
