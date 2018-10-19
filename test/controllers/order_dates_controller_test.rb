require 'test_helper'

class OrderDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_date = order_dates(:one)
  end

  test "should get index" do
    get order_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_order_date_url
    assert_response :success
  end

  test "should create order_date" do
    assert_difference('OrderDate.count') do
      post order_dates_url, params: { order_date: { order_complete: @order_date.order_complete, order_placed: @order_date.order_placed, order_received: @order_date.order_received } }
    end

    assert_redirected_to order_date_url(OrderDate.last)
  end

  test "should show order_date" do
    get order_date_url(@order_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_date_url(@order_date)
    assert_response :success
  end

  test "should update order_date" do
    patch order_date_url(@order_date), params: { order_date: { order_complete: @order_date.order_complete, order_placed: @order_date.order_placed, order_received: @order_date.order_received } }
    assert_redirected_to order_date_url(@order_date)
  end

  test "should destroy order_date" do
    assert_difference('OrderDate.count', -1) do
      delete order_date_url(@order_date)
    end

    assert_redirected_to order_dates_url
  end
end
