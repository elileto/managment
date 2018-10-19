require 'test_helper'

class ManufactureMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacture_material = manufacture_materials(:one)
  end

  test "should get index" do
    get manufacture_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_manufacture_material_url
    assert_response :success
  end

  test "should create manufacture_material" do
    assert_difference('ManufactureMaterial.count') do
      post manufacture_materials_url, params: { manufacture_material: { manufacture_id: @manufacture_material.manufacture_id, material_id: @manufacture_material.material_id } }
    end

    assert_redirected_to manufacture_material_url(ManufactureMaterial.last)
  end

  test "should show manufacture_material" do
    get manufacture_material_url(@manufacture_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_manufacture_material_url(@manufacture_material)
    assert_response :success
  end

  test "should update manufacture_material" do
    patch manufacture_material_url(@manufacture_material), params: { manufacture_material: { manufacture_id: @manufacture_material.manufacture_id, material_id: @manufacture_material.material_id } }
    assert_redirected_to manufacture_material_url(@manufacture_material)
  end

  test "should destroy manufacture_material" do
    assert_difference('ManufactureMaterial.count', -1) do
      delete manufacture_material_url(@manufacture_material)
    end

    assert_redirected_to manufacture_materials_url
  end
end
