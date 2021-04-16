require "application_system_test_case"

class MonitoringsTest < ApplicationSystemTestCase
  setup do
    @monitoring = monitorings(:one)
  end

  test "visiting the index" do
    visit monitorings_url
    assert_selector "h1", text: "Monitorings"
  end

  test "creating a Monitoring" do
    visit monitorings_url
    click_on "New Monitoring"

    fill_in "Content", with: @monitoring.content
    fill_in "Created t", with: @monitoring.created_t
    fill_in "Deleted t", with: @monitoring.deleted_t
    fill_in "Event", with: @monitoring.event_id
    fill_in "Extra data", with: @monitoring.extra_data
    fill_in "Kind", with: @monitoring.kind
    fill_in "Receive", with: @monitoring.receive_id
    fill_in "Receive type", with: @monitoring.receive_type
    fill_in "Tenant", with: @monitoring.tenant_id
    fill_in "Title", with: @monitoring.title
    click_on "Create Monitoring"

    assert_text "Monitoring was successfully created"
    click_on "Back"
  end

  test "updating a Monitoring" do
    visit monitorings_url
    click_on "Edit", match: :first

    fill_in "Content", with: @monitoring.content
    fill_in "Created t", with: @monitoring.created_t
    fill_in "Deleted t", with: @monitoring.deleted_t
    fill_in "Event", with: @monitoring.event_id
    fill_in "Extra data", with: @monitoring.extra_data
    fill_in "Kind", with: @monitoring.kind
    fill_in "Receive", with: @monitoring.receive_id
    fill_in "Receive type", with: @monitoring.receive_type
    fill_in "Tenant", with: @monitoring.tenant_id
    fill_in "Title", with: @monitoring.title
    click_on "Update Monitoring"

    assert_text "Monitoring was successfully updated"
    click_on "Back"
  end

  test "destroying a Monitoring" do
    visit monitorings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monitoring was successfully destroyed"
  end
end
