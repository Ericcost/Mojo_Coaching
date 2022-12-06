require "application_system_test_case"

class CommunicationmeansTest < ApplicationSystemTestCase
  setup do
    @communicationmean = communicationmeans(:one)
  end

  test "visiting the index" do
    visit communicationmeans_url
    assert_selector "h1", text: "Communicationmeans"
  end

  test "should create communicationmean" do
    visit communicationmeans_url
    click_on "New communicationmean"

    click_on "Create Communicationmean"

    assert_text "Communicationmean was successfully created"
    click_on "Back"
  end

  test "should update Communicationmean" do
    visit communicationmean_url(@communicationmean)
    click_on "Edit this communicationmean", match: :first

    click_on "Update Communicationmean"

    assert_text "Communicationmean was successfully updated"
    click_on "Back"
  end

  test "should destroy Communicationmean" do
    visit communicationmean_url(@communicationmean)
    click_on "Destroy this communicationmean", match: :first

    assert_text "Communicationmean was successfully destroyed"
  end
end
