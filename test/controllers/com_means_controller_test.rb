require "test_helper"

class ComMeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @com_mean = com_means(:one)
  end

  test "should get index" do
    get com_means_url
    assert_response :success
  end

  test "should get new" do
    get new_com_mean_url
    assert_response :success
  end

  test "should create com_mean" do
    assert_difference("ComMean.count") do
      post com_means_url, params: { com_mean: {  } }
    end

    assert_redirected_to com_mean_url(ComMean.last)
  end

  test "should show com_mean" do
    get com_mean_url(@com_mean)
    assert_response :success
  end

  test "should get edit" do
    get edit_com_mean_url(@com_mean)
    assert_response :success
  end

  test "should update com_mean" do
    patch com_mean_url(@com_mean), params: { com_mean: {  } }
    assert_redirected_to com_mean_url(@com_mean)
  end

  test "should destroy com_mean" do
    assert_difference("ComMean.count", -1) do
      delete com_mean_url(@com_mean)
    end

    assert_redirected_to com_means_url
  end
end
