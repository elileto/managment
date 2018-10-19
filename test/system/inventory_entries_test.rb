require "application_system_test_case"

class InventoryEntriesTest < ApplicationSystemTestCase
  setup do
    @inventory_entry = inventory_entries(:one)
  end

  test "visiting the index" do
    visit inventory_entries_url
    assert_selector "h1", text: "Inventory Entries"
  end

  test "creating a Inventory entry" do
    visit inventory_entries_url
    click_on "New Inventory Entry"

    fill_in "Entry Date", with: @inventory_entry.entry_date
    fill_in "Inventory", with: @inventory_entry.inventory_id
    fill_in "Number Of Units", with: @inventory_entry.number_of_units
    click_on "Create Inventory entry"

    assert_text "Inventory entry was successfully created"
    click_on "Back"
  end

  test "updating a Inventory entry" do
    visit inventory_entries_url
    click_on "Edit", match: :first

    fill_in "Entry Date", with: @inventory_entry.entry_date
    fill_in "Inventory", with: @inventory_entry.inventory_id
    fill_in "Number Of Units", with: @inventory_entry.number_of_units
    click_on "Update Inventory entry"

    assert_text "Inventory entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory entry" do
    visit inventory_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory entry was successfully destroyed"
  end
end
