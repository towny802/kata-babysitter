require "application_system_test_case"

class NightsTest < ApplicationSystemTestCase
  setup do
    @night = nights(:one)
  end

  test "visiting the index" do
    visit nights_url
    assert_selector "h1", text: "Nights"
  end

  test "creating a Night" do
    visit nights_url
    click_on "New Night"

    fill_in "End Time", with: @night.end_time
    fill_in "Start Time", with: @night.start_time
    click_on "Create Night"

    assert_text "Night was successfully created"
    click_on "Back"
  end

  test "updating a Night" do
    visit nights_url
    click_on "Edit", match: :first

    fill_in "End Time", with: @night.end_time
    fill_in "Start Time", with: @night.start_time
    click_on "Update Night"

    assert_text "Night was successfully updated"
    click_on "Back"
  end

  test "destroying a Night" do
    visit nights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Night was successfully destroyed"
  end
end
