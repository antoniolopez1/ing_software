require 'test_helper'

class UtilityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get utility_index_url
    assert_response :success
  end

  test "should get new" do
    get utility_new_url
    assert_response :success
  end

  test "should get create" do
    get utility_create_url
    assert_response :success
  end

  test "should get edit" do
    get utility_edit_url
    assert_response :success
  end

  test "should get update" do
    get utility_update_url
    assert_response :success
  end

  test "should get destroy" do
    get utility_destroy_url
    assert_response :success
  end

end
