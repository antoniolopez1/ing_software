require 'test_helper'

class UPurchaseDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get u_purchase_detail_index_url
    assert_response :success
  end

  test "should get new" do
    get u_purchase_detail_new_url
    assert_response :success
  end

  test "should get create" do
    get u_purchase_detail_create_url
    assert_response :success
  end

  test "should get edit" do
    get u_purchase_detail_edit_url
    assert_response :success
  end

  test "should get update" do
    get u_purchase_detail_update_url
    assert_response :success
  end

  test "should get destroy" do
    get u_purchase_detail_destroy_url
    assert_response :success
  end

end
