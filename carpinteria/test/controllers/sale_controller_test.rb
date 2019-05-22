require 'test_helper'

class SaleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sale_index_url
    assert_response :success
  end

  test "should get new" do
    get sale_new_url
    assert_response :success
  end

  test "should get create" do
    get sale_create_url
    assert_response :success
  end

  test "should get edit" do
    get sale_edit_url
    assert_response :success
  end

  test "should get update" do
    get sale_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sale_destroy_url
    assert_response :success
  end

end
