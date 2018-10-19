require "application_system_test_case"

class ManufactureMaterialsTest < ApplicationSystemTestCase
  setup do
    @manufacture_material = manufacture_materials(:one)
  end

  test "visiting the index" do
    visit manufacture_materials_url
    assert_selector "h1", text: "Manufacture Materials"
  end

  test "creating a Manufacture material" do
    visit manufacture_materials_url
    click_on "New Manufacture Material"

    fill_in "Manufacture", with: @manufacture_material.manufacture_id
    fill_in "Material", with: @manufacture_material.material_id
    click_on "Create Manufacture material"

    assert_text "Manufacture material was successfully created"
    click_on "Back"
  end

  test "updating a Manufacture material" do
    visit manufacture_materials_url
    click_on "Edit", match: :first

    fill_in "Manufacture", with: @manufacture_material.manufacture_id
    fill_in "Material", with: @manufacture_material.material_id
    click_on "Update Manufacture material"

    assert_text "Manufacture material was successfully updated"
    click_on "Back"
  end

  test "destroying a Manufacture material" do
    visit manufacture_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manufacture material was successfully destroyed"
  end
end
