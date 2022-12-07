require "application_system_test_case"

class JoinTableUserTracksTest < ApplicationSystemTestCase
  setup do
    @join_table_user_track = join_table_user_tracks(:one)
  end

  test "visiting the index" do
    visit join_table_user_tracks_url
    assert_selector "h1", text: "Join table user tracks"
  end

  test "should create join table user track" do
    visit join_table_user_tracks_url
    click_on "New join table user track"

    click_on "Create Join table user track"

    assert_text "Join table user track was successfully created"
    click_on "Back"
  end

  test "should update Join table user track" do
    visit join_table_user_track_url(@join_table_user_track)
    click_on "Edit this join table user track", match: :first

    click_on "Update Join table user track"

    assert_text "Join table user track was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table user track" do
    visit join_table_user_track_url(@join_table_user_track)
    click_on "Destroy this join table user track", match: :first

    assert_text "Join table user track was successfully destroyed"
  end
end
