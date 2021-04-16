require 'test_helper'

class MonitoringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitoring = monitorings(:one)
  end

  test "should get index" do
    get monitorings_url
    assert_response :success
  end

  test "should get new" do
    get new_monitoring_url
    assert_response :success
  end

  test "should create monitoring" do
    assert_difference('Monitoring.count') do
      post monitorings_url, params: { monitoring: { content: @monitoring.content, created_t: @monitoring.created_t, deleted_t: @monitoring.deleted_t, event_id: @monitoring.event_id, extra_data: @monitoring.extra_data, kind: @monitoring.kind, receive_id: @monitoring.receive_id, receive_type: @monitoring.receive_type, tenant_id: @monitoring.tenant_id, title: @monitoring.title } }
    end

    assert_redirected_to monitoring_url(Monitoring.last)
  end

  test "should show monitoring" do
    get monitoring_url(@monitoring)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitoring_url(@monitoring)
    assert_response :success
  end

  test "should update monitoring" do
    patch monitoring_url(@monitoring), params: { monitoring: { content: @monitoring.content, created_t: @monitoring.created_t, deleted_t: @monitoring.deleted_t, event_id: @monitoring.event_id, extra_data: @monitoring.extra_data, kind: @monitoring.kind, receive_id: @monitoring.receive_id, receive_type: @monitoring.receive_type, tenant_id: @monitoring.tenant_id, title: @monitoring.title } }
    assert_redirected_to monitoring_url(@monitoring)
  end

  test "should destroy monitoring" do
    assert_difference('Monitoring.count', -1) do
      delete monitoring_url(@monitoring)
    end

    assert_redirected_to monitorings_url
  end
end
