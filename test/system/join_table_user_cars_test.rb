require "application_system_test_case"

class JoinTableUserCarsTest < ApplicationSystemTestCase
  setup do
    @join_table_user_car = join_table_user_cars(:one)
  end

  test "visiting the index" do
    visit join_table_user_cars_url
    assert_selector "h1", text: "Join table user cars"
  end

  test "should create join table user car" do
    visit join_table_user_cars_url
    click_on "New join table user car"

    click_on "Create Join table user car"

    assert_text "Join table user car was successfully created"
    click_on "Back"
  end

  test "should update Join table user car" do
    visit join_table_user_car_url(@join_table_user_car)
    click_on "Edit this join table user car", match: :first

    click_on "Update Join table user car"

    assert_text "Join table user car was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table user car" do
    visit join_table_user_car_url(@join_table_user_car)
    click_on "Destroy this join table user car", match: :first

    assert_text "Join table user car was successfully destroyed"
  end
end
