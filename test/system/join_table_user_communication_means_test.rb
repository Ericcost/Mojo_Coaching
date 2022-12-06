require "application_system_test_case"

class JoinTableUserCommunicationMeansTest < ApplicationSystemTestCase
  setup do
    @join_table_user_communication_mean = join_table_user_communication_means(:one)
  end

  test "visiting the index" do
    visit join_table_user_communication_means_url
    assert_selector "h1", text: "Join table user communication means"
  end

  test "should create join table user communication mean" do
    visit join_table_user_communication_means_url
    click_on "New join table user communication mean"

    click_on "Create Join table user communication mean"

    assert_text "Join table user communication mean was successfully created"
    click_on "Back"
  end

  test "should update Join table user communication mean" do
    visit join_table_user_communication_mean_url(@join_table_user_communication_mean)
    click_on "Edit this join table user communication mean", match: :first

    click_on "Update Join table user communication mean"

    assert_text "Join table user communication mean was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table user communication mean" do
    visit join_table_user_communication_mean_url(@join_table_user_communication_mean)
    click_on "Destroy this join table user communication mean", match: :first

    assert_text "Join table user communication mean was successfully destroyed"
  end
end
