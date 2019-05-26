require 'test_helper'

class UtilitiesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilities_type = utilities_types(:one)
  end

  test "should get index" do
    get utilities_types_url
    assert_response :success
  end

  test "should get new" do
    get new_utilities_type_url
    assert_response :success
  end

  test "should create utilities_type" do
    assert_difference('UtilitiesType.count') do
      post utilities_types_url, params: { utilities_type: { description: @utilities_type.description } }
    end

    assert_redirected_to utilities_type_url(UtilitiesType.last)
  end

  test "should show utilities_type" do
    get utilities_type_url(@utilities_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilities_type_url(@utilities_type)
    assert_response :success
  end

  test "should update utilities_type" do
    patch utilities_type_url(@utilities_type), params: { utilities_type: { description: @utilities_type.description } }
    assert_redirected_to utilities_type_url(@utilities_type)
  end

  test "should destroy utilities_type" do
    assert_difference('UtilitiesType.count', -1) do
      delete utilities_type_url(@utilities_type)
    end

    assert_redirected_to utilities_types_url
  end
end
