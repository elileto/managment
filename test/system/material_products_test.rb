require "application_system_test_case"

class MaterialProductsTest < ApplicationSystemTestCase
  setup do
    @material_product = material_products(:one)
  end

  test "visiting the index" do
    visit material_products_url
    assert_selector "h1", text: "Material Products"
  end

  test "creating a Material product" do
    visit material_products_url
    click_on "New Material Product"

    fill_in "Material", with: @material_product.material_id
    fill_in "Product", with: @material_product.product_id
    click_on "Create Material product"

    assert_text "Material product was successfully created"
    click_on "Back"
  end

  test "updating a Material product" do
    visit material_products_url
    click_on "Edit", match: :first

    fill_in "Material", with: @material_product.material_id
    fill_in "Product", with: @material_product.product_id
    click_on "Update Material product"

    assert_text "Material product was successfully updated"
    click_on "Back"
  end

  test "destroying a Material product" do
    visit material_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material product was successfully destroyed"
  end
end
