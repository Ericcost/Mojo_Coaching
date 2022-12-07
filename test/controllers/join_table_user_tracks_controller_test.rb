require "test_helper"

class JoinTableUserTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_track = join_table_user_tracks(:one)
  end

  test "should get index" do
    get join_table_user_tracks_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_user_track_url
    assert_response :success
  end

  test "should create join_table_user_track" do
    assert_difference("JoinTableUserTrack.count") do
      post join_table_user_tracks_url, params: { join_table_user_track: {  } }
    end

    assert_redirected_to join_table_user_track_url(JoinTableUserTrack.last)
  end

  test "should show join_table_user_track" do
    get join_table_user_track_url(@join_table_user_track)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_user_track_url(@join_table_user_track)
    assert_response :success
  end

  test "should update join_table_user_track" do
    patch join_table_user_track_url(@join_table_user_track), params: { join_table_user_track: {  } }
    assert_redirected_to join_table_user_track_url(@join_table_user_track)
  end

  test "should destroy join_table_user_track" do
    assert_difference("JoinTableUserTrack.count", -1) do
      delete join_table_user_track_url(@join_table_user_track)
    end

    assert_redirected_to join_table_user_tracks_url
  end
end
