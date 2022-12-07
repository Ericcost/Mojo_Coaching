require "application_system_test_case"

class JoinTableUserComMeansTest < ApplicationSystemTestCase
  setup do
    @join_table_user_com_mean = join_table_user_com_means(:one)
  end

  test "visiting the index" do
    visit join_table_user_com_means_url
    assert_selector "h1", text: "Join table user com means"
  end

  test "should create join table user com mean" do
    visit join_table_user_com_means_url
    click_on "New join table user com mean"

    click_on "Create Join table user com mean"

    assert_text "Join table user com mean was successfully created"
    click_on "Back"
  end

  test "should update Join table user com mean" do
    visit join_table_user_com_mean_url(@join_table_user_com_mean)
    click_on "Edit this join table user com mean", match: :first

    click_on "Update Join table user com mean"

    assert_text "Join table user com mean was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table user com mean" do
    visit join_table_user_com_mean_url(@join_table_user_com_mean)
    click_on "Destroy this join table user com mean", match: :first

    assert_text "Join table user com mean was successfully destroyed"
  end
end
