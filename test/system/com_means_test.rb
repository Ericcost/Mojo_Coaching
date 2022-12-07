require "application_system_test_case"

class ComMeansTest < ApplicationSystemTestCase
  setup do
    @com_mean = com_means(:one)
  end

  test "visiting the index" do
    visit com_means_url
    assert_selector "h1", text: "Com means"
  end

  test "should create com mean" do
    visit com_means_url
    click_on "New com mean"

    click_on "Create Com mean"

    assert_text "Com mean was successfully created"
    click_on "Back"
  end

  test "should update Com mean" do
    visit com_mean_url(@com_mean)
    click_on "Edit this com mean", match: :first

    click_on "Update Com mean"

    assert_text "Com mean was successfully updated"
    click_on "Back"
  end

  test "should destroy Com mean" do
    visit com_mean_url(@com_mean)
    click_on "Destroy this com mean", match: :first

    assert_text "Com mean was successfully destroyed"
  end
end
