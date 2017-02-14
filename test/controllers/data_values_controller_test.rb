require 'test_helper'

class DataValuesControllerTest < ActionController::TestCase
  setup do
    @server = servers(:one)
    @data_value = data_values(:one)
  end

  test "should get index" do
    get :index, params: { server_id: @server }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { server_id: @server }
    assert_response :success
  end

  test "should create data_value" do
    assert_difference('DataValue.count') do
      post :create, params: { server_id: @server, data_value: @data_value.attributes }
    end

    assert_redirected_to server_data_value_path(@server, DataValue.last)
  end

  test "should show data_value" do
    get :show, params: { server_id: @server, id: @data_value }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { server_id: @server, id: @data_value }
    assert_response :success
  end

  test "should update data_value" do
    put :update, params: { server_id: @server, id: @data_value, data_value: @data_value.attributes }
    assert_redirected_to server_data_value_path(@server, DataValue.last)
  end

  test "should destroy data_value" do
    assert_difference('DataValue.count', -1) do
      delete :destroy, params: { server_id: @server, id: @data_value }
    end

    assert_redirected_to server_data_values_path(@server)
  end
end
