require 'test_helper'

class ErrorEventsControllerTest < ActionController::TestCase
  setup do
    @server = servers(:one)
    @error_event = error_events(:one)
  end

  test "should get index" do
    get :index, params: { server_id: @server }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { server_id: @server }
    assert_response :success
  end

  test "should create error_event" do
    assert_difference('ErrorEvent.count') do
      post :create, params: { server_id: @server, error_event: @error_event.attributes }
    end

    assert_redirected_to server_error_event_path(@server, ErrorEvent.last)
  end

  test "should show error_event" do
    get :show, params: { server_id: @server, id: @error_event }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { server_id: @server, id: @error_event }
    assert_response :success
  end

  test "should update error_event" do
    put :update, params: { server_id: @server, id: @error_event, error_event: @error_event.attributes }
    assert_redirected_to server_error_event_path(@server, ErrorEvent.last)
  end

  test "should destroy error_event" do
    assert_difference('ErrorEvent.count', -1) do
      delete :destroy, params: { server_id: @server, id: @error_event }
    end

    assert_redirected_to server_error_events_path(@server)
  end
end
