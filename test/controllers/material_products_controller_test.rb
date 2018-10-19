require 'test_helper'

class MaterialProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_product = material_products(:one)
  end

  test "should get index" do
    get material_products_url
    assert_response :success
  end

  test "should get new" do
    get new_material_product_url
    assert_response :success
  end

  test "should create material_product" do
    assert_difference('MaterialProduct.count') do
      post material_products_url, params: { material_product: { material_id: @material_product.material_id, product_id: @material_product.product_id } }
    end

    assert_redirected_to material_product_url(MaterialProduct.last)
  end

  test "should show material_product" do
    get material_product_url(@material_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_product_url(@material_product)
    assert_response :success
  end

  test "should update material_product" do
    patch material_product_url(@material_product), params: { material_product: { material_id: @material_product.material_id, product_id: @material_product.product_id } }
    assert_redirected_to material_product_url(@material_product)
  end

  test "should destroy material_product" do
    assert_difference('MaterialProduct.count', -1) do
      delete material_product_url(@material_product)
    end

    assert_redirected_to material_products_url
  end
end
