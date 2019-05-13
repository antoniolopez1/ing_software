require 'test_helper'

class PurchaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get purchase_index_url
    assert_response :success
  end

  test "should get new" do
    get purchase_new_url
    assert_response :success
  end

  test "should get create" do
    get purchase_create_url
    assert_response :success
  end

  test "should get edit" do
    get purchase_edit_url
    assert_response :success
  end

  test "should get update" do
    get purchase_update_url
    assert_response :success
  end

  test "should get destroy" do
    get purchase_destroy_url
    assert_response :success
  end

end
