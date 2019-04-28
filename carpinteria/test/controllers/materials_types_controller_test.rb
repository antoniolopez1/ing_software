require 'test_helper'

class MaterialsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materials_type = materials_types(:one)
  end

  test "should get index" do
    get materials_types_url
    assert_response :success
  end

  test "should get new" do
    get new_materials_type_url
    assert_response :success
  end

  test "should create materials_type" do
    assert_difference('MaterialsType.count') do
      post materials_types_url, params: { materials_type: { description: @materials_type.description } }
    end

    assert_redirected_to materials_type_url(MaterialsType.last)
  end

  test "should show materials_type" do
    get materials_type_url(@materials_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_materials_type_url(@materials_type)
    assert_response :success
  end

  test "should update materials_type" do
    patch materials_type_url(@materials_type), params: { materials_type: { description: @materials_type.description } }
    assert_redirected_to materials_type_url(@materials_type)
  end

  test "should destroy materials_type" do
    assert_difference('MaterialsType.count', -1) do
      delete materials_type_url(@materials_type)
    end

    assert_redirected_to materials_types_url
  end
end
