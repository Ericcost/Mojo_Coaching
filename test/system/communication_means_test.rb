require "application_system_test_case"

class CommunicationMeansTest < ApplicationSystemTestCase
  setup do
    @communication_mean = communication_means(:one)
  end

  test "visiting the index" do
    visit communication_means_url
    assert_selector "h1", text: "Communication means"
  end

  test "should create communication mean" do
    visit communication_means_url
    click_on "New communication mean"

    click_on "Create Communication mean"

    assert_text "Communication mean was successfully created"
    click_on "Back"
  end

  test "should update Communication mean" do
    visit communication_mean_url(@communication_mean)
    click_on "Edit this communication mean", match: :first

    click_on "Update Communication mean"

    assert_text "Communication mean was successfully updated"
    click_on "Back"
  end

  test "should destroy Communication mean" do
    visit communication_mean_url(@communication_mean)
    click_on "Destroy this communication mean", match: :first

    assert_text "Communication mean was successfully destroyed"
  end
end
