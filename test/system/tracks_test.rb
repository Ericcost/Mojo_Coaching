require "application_system_test_case"

class TracksTest < ApplicationSystemTestCase
  setup do
    @track = tracks(:one)
  end

  test "visiting the index" do
    visit tracks_url
    assert_selector "h1", text: "Tracks"
  end

  test "should create track" do
    visit tracks_url
    click_on "New track"

    click_on "Create Track"

    assert_text "Track was successfully created"
    click_on "Back"
  end

  test "should update Track" do
    visit track_url(@track)
    click_on "Edit this track", match: :first

    click_on "Update Track"

    assert_text "Track was successfully updated"
    click_on "Back"
  end

  test "should destroy Track" do
    visit track_url(@track)
    click_on "Destroy this track", match: :first

    assert_text "Track was successfully destroyed"
  end
end
