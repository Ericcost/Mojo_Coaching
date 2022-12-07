require "test_helper"

class JoinTableUserComMeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_com_mean = join_table_user_com_means(:one)
  end

  test "should get index" do
    get join_table_user_com_means_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_user_com_mean_url
    assert_response :success
  end

  test "should create join_table_user_com_mean" do
    assert_difference("JoinTableUserComMean.count") do
      post join_table_user_com_means_url, params: { join_table_user_com_mean: {  } }
    end

    assert_redirected_to join_table_user_com_mean_url(JoinTableUserComMean.last)
  end

  test "should show join_table_user_com_mean" do
    get join_table_user_com_mean_url(@join_table_user_com_mean)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_user_com_mean_url(@join_table_user_com_mean)
    assert_response :success
  end

  test "should update join_table_user_com_mean" do
    patch join_table_user_com_mean_url(@join_table_user_com_mean), params: { join_table_user_com_mean: {  } }
    assert_redirected_to join_table_user_com_mean_url(@join_table_user_com_mean)
  end

  test "should destroy join_table_user_com_mean" do
    assert_difference("JoinTableUserComMean.count", -1) do
      delete join_table_user_com_mean_url(@join_table_user_com_mean)
    end

    assert_redirected_to join_table_user_com_means_url
  end
end
