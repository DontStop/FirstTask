require 'test_helper'

class HttpdataControllerTest < ActionController::TestCase
  setup do
    @httpdatum = httpdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:httpdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create httpdatum" do
    assert_difference('Httpdatum.count') do
      post :create, httpdatum: { query_params: @httpdatum.query_params, query_string: @httpdatum.query_string, remote_ip: @httpdatum.remote_ip, request_id: @httpdatum.request_id, request_method: @httpdatum.request_method }
    end

    assert_redirected_to httpdatum_path(assigns(:httpdatum))
  end

  test "should show httpdatum" do
    get :show, id: @httpdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @httpdatum
    assert_response :success
  end

  test "should update httpdatum" do
    patch :update, id: @httpdatum, httpdatum: { query_params: @httpdatum.query_params, query_string: @httpdatum.query_string, remote_ip: @httpdatum.remote_ip, request_id: @httpdatum.request_id, request_method: @httpdatum.request_method }
    assert_redirected_to httpdatum_path(assigns(:httpdatum))
  end

  test "should destroy httpdatum" do
    assert_difference('Httpdatum.count', -1) do
      delete :destroy, id: @httpdatum
    end

    assert_redirected_to httpdata_path
  end
end
