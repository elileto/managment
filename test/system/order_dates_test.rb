require "application_system_test_case"

class OrderDatesTest < ApplicationSystemTestCase
  setup do
    @order_date = order_dates(:one)
  end

  test "visiting the index" do
    visit order_dates_url
    assert_selector "h1", text: "Order Dates"
  end

  test "creating a Order date" do
    visit order_dates_url
    click_on "New Order Date"

    fill_in "Order Complete", with: @order_date.order_complete
    fill_in "Order Placed", with: @order_date.order_placed
    fill_in "Order Received", with: @order_date.order_received
    click_on "Create Order date"

    assert_text "Order date was successfully created"
    click_on "Back"
  end

  test "updating a Order date" do
    visit order_dates_url
    click_on "Edit", match: :first

    fill_in "Order Complete", with: @order_date.order_complete
    fill_in "Order Placed", with: @order_date.order_placed
    fill_in "Order Received", with: @order_date.order_received
    click_on "Update Order date"

    assert_text "Order date was successfully updated"
    click_on "Back"
  end

  test "destroying a Order date" do
    visit order_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order date was successfully destroyed"
  end
end
