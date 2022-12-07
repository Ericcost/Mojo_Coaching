require "test_helper"

class JoinTableUserCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_table_user_car = join_table_user_cars(:one)
  end

  test "should get index" do
    get join_table_user_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_join_table_user_car_url
    assert_response :success
  end

  test "should create join_table_user_car" do
    assert_difference("JoinTableUserCar.count") do
      post join_table_user_cars_url, params: { join_table_user_car: {  } }
    end

    assert_redirected_to join_table_user_car_url(JoinTableUserCar.last)
  end

  test "should show join_table_user_car" do
    get join_table_user_car_url(@join_table_user_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_table_user_car_url(@join_table_user_car)
    assert_response :success
  end

  test "should update join_table_user_car" do
    patch join_table_user_car_url(@join_table_user_car), params: { join_table_user_car: {  } }
    assert_redirected_to join_table_user_car_url(@join_table_user_car)
  end

  test "should destroy join_table_user_car" do
    assert_difference("JoinTableUserCar.count", -1) do
      delete join_table_user_car_url(@join_table_user_car)
    end

    assert_redirected_to join_table_user_cars_url
  end
end
