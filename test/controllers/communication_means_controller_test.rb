require "test_helper"

class CommunicationMeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @communication_mean = communication_means(:one)
  end

  test "should get index" do
    get communication_means_url
    assert_response :success
  end

  test "should get new" do
    get new_communication_mean_url
    assert_response :success
  end

  test "should create communication_mean" do
    assert_difference("CommunicationMean.count") do
      post communication_means_url, params: { communication_mean: {  } }
    end

    assert_redirected_to communication_mean_url(CommunicationMean.last)
  end

  test "should show communication_mean" do
    get communication_mean_url(@communication_mean)
    assert_response :success
  end

  test "should get edit" do
    get edit_communication_mean_url(@communication_mean)
    assert_response :success
  end

  test "should update communication_mean" do
    patch communication_mean_url(@communication_mean), params: { communication_mean: {  } }
    assert_redirected_to communication_mean_url(@communication_mean)
  end

  test "should destroy communication_mean" do
    assert_difference("CommunicationMean.count", -1) do
      delete communication_mean_url(@communication_mean)
    end

    assert_redirected_to communication_means_url
  end
end
