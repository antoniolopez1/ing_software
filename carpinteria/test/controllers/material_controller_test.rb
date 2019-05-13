require 'test_helper'

class MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get material_index_url
    assert_response :success
  end

  test "should get new" do
    get material_new_url
    assert_response :success
  end

  test "should get create" do
    get material_create_url
    assert_response :success
  end

  test "should get edit" do
    get material_edit_url
    assert_response :success
  end

  test "should get update" do
    get material_update_url
    assert_response :success
  end

  test "should get destroy" do
    get material_destroy_url
    assert_response :success
  end

end
