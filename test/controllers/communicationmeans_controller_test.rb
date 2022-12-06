require "test_helper"

class CommunicationmeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @communicationmean = communicationmeans(:one)
  end

  test "should get index" do
    get communicationmeans_url
    assert_response :success
  end

  test "should get new" do
    get new_communicationmean_url
    assert_response :success
  end

  test "should create communicationmean" do
    assert_difference("Communicationmean.count") do
      post communicationmeans_url, params: { communicationmean: {  } }
    end

    assert_redirected_to communicationmean_url(Communicationmean.last)
  end

  test "should show communicationmean" do
    get communicationmean_url(@communicationmean)
    assert_response :success
  end

  test "should get edit" do
    get edit_communicationmean_url(@communicationmean)
    assert_response :success
  end

  test "should update communicationmean" do
    patch communicationmean_url(@communicationmean), params: { communicationmean: {  } }
    assert_redirected_to communicationmean_url(@communicationmean)
  end

  test "should destroy communicationmean" do
    assert_difference("Communicationmean.count", -1) do
      delete communicationmean_url(@communicationmean)
    end

    assert_redirected_to communicationmeans_url
  end
end
