require 'test_helper'

class RegistersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post :create, :register => { }
    end

    assert_redirected_to register_path(assigns(:register))
  end

  test "should show register" do
    get :show, :id => registers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => registers(:one).to_param
    assert_response :success
  end

  test "should update register" do
    put :update, :id => registers(:one).to_param, :register => { }
    assert_redirected_to register_path(assigns(:register))
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete :destroy, :id => registers(:one).to_param
    end

    assert_redirected_to registers_path
  end
end
