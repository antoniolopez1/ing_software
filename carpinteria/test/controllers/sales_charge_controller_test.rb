require 'test_helper'

class SalesChargeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sales_charge_index_url
    assert_response :success
  end

  test "should get new" do
    get sales_charge_new_url
    assert_response :success
  end

  test "should get create" do
    get sales_charge_create_url
    assert_response :success
  end

  test "should get edit" do
    get sales_charge_edit_url
    assert_response :success
  end

  test "should get update" do
    get sales_charge_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sales_charge_destroy_url
    assert_response :success
  end

end
