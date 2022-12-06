require "test_helper"

class JoinTableUserCommunicationMeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_communication_mean = join_table_user_communication_means(:one)
  end

  test "should get index" do
    get join_table_user_communication_means_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_user_communication_mean_url
    assert_response :success
  end

  test "should create join_table_user_communication_mean" do
    assert_difference("JoinTableUserCommunicationMean.count") do
      post join_table_user_communication_means_url, params: { join_table_user_communication_mean: {  } }
    end

    assert_redirected_to join_table_user_communication_mean_url(JoinTableUserCommunicationMean.last)
  end

  test "should show join_table_user_communication_mean" do
    get join_table_user_communication_mean_url(@join_table_user_communication_mean)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_user_communication_mean_url(@join_table_user_communication_mean)
    assert_response :success
  end

  test "should update join_table_user_communication_mean" do
    patch join_table_user_communication_mean_url(@join_table_user_communication_mean), params: { join_table_user_communication_mean: {  } }
    assert_redirected_to join_table_user_communication_mean_url(@join_table_user_communication_mean)
  end

  test "should destroy join_table_user_communication_mean" do
    assert_difference("JoinTableUserCommunicationMean.count", -1) do
      delete join_table_user_communication_mean_url(@join_table_user_communication_mean)
    end

    assert_redirected_to join_table_user_communication_means_url
  end
end
